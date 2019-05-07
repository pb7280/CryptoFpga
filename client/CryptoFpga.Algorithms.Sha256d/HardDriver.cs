using CryptoFpga.Algorithms.Common;
using CryptoFpga.IO.Memory;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;

[assembly: InternalsVisibleTo("CryptoFpga.Algorithms.Sha256d.Tests")]

namespace CryptoFpga.Algorithms.Sha256d
{
    /// <summary>
    /// Represents a driver that will run on FPGA PL
    /// </summary>
    internal class HardDriver : IDriver<Sha256dData>
    {
        // Only used for num hash reporting
        private uint _startNonce;

        /// <summary>
        /// Most recently fetched status
        /// </summary>
        public ScanStatus CurrentStatus { get; } = new ScanStatus();

        /// <summary>
        /// Fires when new status is available
        /// </summary>
        public event EventHandler<ScanStatus> OnStatusUpdate;

        // Our map into FPGA port region
        private readonly MemMap _map;

        /// <summary>
        /// Initialize new HardDriver
        /// </summary>
        public HardDriver()
        {
            _map = new MemMap(Addresses.Sha256Base);
        }

        /// <summary>
        /// Run core hash loop until result is found or max nonce is reached
        /// </summary>
        public Task<ScanResult> ScanHashAsync(Sha256dData data) => ScanHashAsync(data, CancellationToken.None);

        /// <summary>
        /// Run core hash loop until result is found or max nonce is reached
        /// </summary>
        public async Task<ScanResult> ScanHashAsync(Sha256dData data, CancellationToken cancel)
        {
            _startNonce = data.StartNonce;
            // SHA256 algorithm requires certain padding and information be appended to the data
            // Since this is computationally inexpensive and only needed at the beginning, 
            // it is offloaded here instead of run in hardware (wasting area)
            var paddedWork = GeneratePaddedData(data.Work);

            // Write the work data to hash over, which is now 128 bytes long
            await _map.WriteIntAsync(Addresses.Sha256Work, paddedWork);
            // Write 32-byte target so hardware can check without polling software every microsecond
            await _map.WriteIntAsync(Addresses.Sha256Target, data.Target);

            // Write max nonce to hardware
            await _map.WriteIntAsync(Addresses.Sha256MaxNonce, data.MaxNonce);

            // Send start signal
            Console.WriteLine("Sending start signal to PL...");
            await _map.WriteIntAsync(0, 1);

            // Stopwatch will be used for hashrate status calculations
            var stopwatch = new Stopwatch();
            stopwatch.Start();

            // PL is done calculating when one of the upper bits in the first byte is 1
            while ((await _map.ReadIntAsync(0) & 0xe) == 0)
            {
                // Wait a second to reduce CPU and I/O load, has no significant effect on results
                await Task.Delay(1000, cancel);

                // Check for task cancel
                if (cancel.IsCancellationRequested)
                {
                    // Write off to control
                    await _map.WriteIntAsync(0, 0);
                    // End search
                    break;
                }

                // Update current status
                await UpdateStatus(stopwatch.Elapsed);
            }

            stopwatch.Stop();
            // Final status update
            await UpdateStatus(stopwatch.Elapsed);

            // Result code will be 1 if result was found, 0 if nonces exhausted
            var result = await _map.ReadIntAsync(Addresses.Sha256Return);

            // Nonce will be located in its original spot in the header I/O
            var nonce = await _map.ReadIntAsync(Addresses.Sha256Work + 19 * 4);

            return result == 1 ? new ScanResult(nonce) : ScanResult.NotFound;
        }

        private static IEnumerable<uint> GeneratePaddedData(IEnumerable<uint> data)
        {
            // SHA256 requires a 1 bit appended to the data, 0 padding until a multiple of 512 bits,
            // and length of original data at the very end
            // See https://en.wikipedia.org/wiki/SHA-2#Pseudocode

            // Initial data
            // We only want first 20 uints (80 bytes)
            foreach (var u in data.Take(20))
            {
                yield return u;
            }

            // 1 bit
            yield return 0x80000000;

            // Padding
            for (var i = 0; i < 10; i++) yield return 0;

            // Length (0x280 == 640 bits == 80 bytes)
            yield return 0x00000280;

            // Has now returned 32 uints (128 bytes)
        }

        private async Task UpdateStatus(TimeSpan runtime)
        {
            // Read the nonce the PL has just finished
            var curNonce = await _map.ReadIntAsync(Addresses.Sha256Work + 19 * 4);

            // Since PL increments nonce by 1, total hashes done is a simple subtraction of starting nonce
            CurrentStatus.UpdateValues(curNonce - _startNonce + 1, runtime);

            // Fire event
            OnStatusUpdate?.Invoke(this, CurrentStatus);
        }

        public void Dispose()
        {
            _map.Dispose();
        }
    }
}
