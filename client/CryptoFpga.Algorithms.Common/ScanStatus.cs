using System;
using System.Collections.Generic;
using System.Text;

namespace CryptoFpga.Algorithms.Common
{
    /// <summary>
    /// Represents current statistics about a running hash scan
    /// </summary>
    public class ScanStatus : EventArgs
    {
        /// <summary>
        /// Total hashes since start of scan
        /// </summary>
        public uint TotalHashes { get; private set; }
        /// <summary>
        /// Hashes since last update
        /// </summary>
        public uint ImmediateHashes { get; private set; }
        /// <summary>
        /// Total runtime since start of scan
        /// </summary>
        public TimeSpan Runtime { get; private set; }
        /// <summary>
        /// Time this status was created
        /// </summary>
        public DateTime Timestamp { get; private set; }

        /// <summary>
        /// Average hashrate for total runtime
        /// </summary>
        public Hashrate TotalHashrate => TotalHashes / Runtime.TotalSeconds;
        /// <summary>
        /// Average hashrate since last update
        /// </summary>
        public Hashrate ImmediateHashrate { get; private set; }

        public ScanStatus()
        { }

        public ScanStatus(uint totalHashes, uint immHashes, TimeSpan runtime, TimeSpan lastRuntime)
        {
            TotalHashes = totalHashes;
            ImmediateHashes = immHashes;
            Runtime = runtime;
            Timestamp = DateTime.Now;
            ImmediateHashrate = immHashes / (runtime - lastRuntime).TotalSeconds;
        }

        public void UpdateValues(uint totalHashes, TimeSpan runtime)
        {
            ImmediateHashes = totalHashes - TotalHashes;
            ImmediateHashrate = ImmediateHashes / (runtime - Runtime).TotalSeconds;

            TotalHashes = totalHashes;
            Runtime = runtime;
            Timestamp = DateTime.Now;
        }

        public override string ToString()
        {
            return $"Hashrate: {ImmediateHashrate}; Total Hashrate: {TotalHashrate}";
        }
    }
}
