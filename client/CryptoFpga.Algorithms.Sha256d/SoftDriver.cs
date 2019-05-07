using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Threading;
using System.Threading.Tasks;
using CryptoFpga.Algorithms.Common;
using CryptoFpga.Common;

namespace CryptoFpga.Algorithms.Sha256d
{
    /// <summary>
    /// A "mock" driver that will run the hashing algorithm in software
    /// Used for both testing and on-the-fly verification of PL results
    /// </summary>
    internal class SoftDriver : IDriver<Sha256dData>
    {
        // Software implementation of SHA256
        // Under Windows, this forwards to the OS component crypto library BCrypt (closed-source)
        // Under Linux, the same is done forwarding to OpenSSL
        private readonly SHA256 _sha = new SHA256Managed();

        public ScanStatus CurrentStatus { get; } = new ScanStatus();

        public event EventHandler<ScanStatus> OnStatusUpdate;

        public Task<ScanResult> ScanHashAsync(Sha256dData data) => ScanHashAsync(data, CancellationToken.None);

        public Task<ScanResult> ScanHashAsync(Sha256dData data, CancellationToken cancel)
        {
            var startNonce = data.StartNonce;

            var stopwatch = new Stopwatch();

            stopwatch.Start();

            // Cache the highest uint of the target
            var targUpper = data.Target.ElementAt(7);

            // This core loop is not overly optimized
            // But it does perform admirably, better than the reference CPU miner did by about 30%

            // In production it is only used to verify results from PL before final submission,
            // which is infrequently needed and takes negligible runtime to run
            return Task.Run(() =>
            {
                // Convert our work to a byte array since that is the only input type accepted by 
                // the language implementations of SHA256
                var bytes = CryptoConvert.ToByteEnum(data.Work.Take(19).Append(0u)).ToArray();

                for (var nonce = startNonce; nonce <= data.MaxNonce; nonce++)
                {
                    // Set the upper 4 bytes of the bytes (header) to the current nonce
                    SetUpperBytes(bytes, nonce);

                    // Core algorithm, double SHA256
                    var hash2 = _sha.ComputeHash(_sha.ComputeHash(bytes));

                    // Check the upper 4 bytes only as a fast check
                    var fastValid = FastCheckValid(hash2, targUpper);

                    // Do expensive stuff like status updating every 100000 hashes (roughly 1s)
                    // or if fast valid check passed
                    if (nonce % 500000 == 0 || fastValid)
                    {
                        CurrentStatus.UpdateValues(nonce - startNonce + 1, stopwatch.Elapsed);

                        OnStatusUpdate?.Invoke(this, CurrentStatus);

                        // Do a full check
                        var uints = CryptoConvert.ToUInt32Enum(hash2).ToList();
                        var valid = CheckValid(uints, data.Target);

                        if (valid)
                        {
                            return new ScanResult(nonce);
                        }

                        if (cancel.IsCancellationRequested) break;
                    }
                }

                return ScanResult.NotFound;
            }, cancel);
        }

        // We set the upper 4 bytes of the list to the corresponding bytes in passed uint
        private static void SetUpperBytes(IList<byte> bytes, uint upper)
        {
            bytes[76] = (byte) (upper >> 24);
            bytes[77] = (byte) (upper >> 16);
            bytes[78] = (byte) (upper >> 8);
            bytes[79] = (byte) upper;
        }

        // Quick but inaccurate test of a valid hash (under target)
        // Used in tight loop, and a true will prompt a full accurate test
        private static bool FastCheckValid(IReadOnlyList<byte> result, uint targUpper)
        {
            return result[31] <= (byte) targUpper &&
                   result[30] <= (byte) targUpper >> 8 &&
                   result[29] <= (byte) targUpper >> 16 &&
                   result[28] <= (byte) targUpper >> 24;
        }

        // Fully accurate test for hash below target
        private static bool CheckValid(IReadOnlyList<uint> result, IEnumerable<uint> target)
        {
            // We start at the end of target
            // If the resulting hash at the same position is higher, then the hash is above target
            // If the hash at the same position is lower, hash is below target (submit)
            // If they are the same, check the next lowest uint
            var i = result.Count - 1;
            foreach (var u in target.Reverse())
            {
                if (result[i] > u) return false;
                if (result[i] < u) return true;
            }

            // If values are exactly identical (HIGHLY unlikely), hash is also valid
            return true;
        }

        public void Dispose()
        {
            _sha.Dispose();
        }
    }
}
