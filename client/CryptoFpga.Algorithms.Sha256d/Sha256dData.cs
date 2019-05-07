using System.Collections.Generic;
using System.Linq;

namespace CryptoFpga.Algorithms.Sha256d
{
    /// <summary>
    /// Represents the low-level data needed by the driver to solve hashes
    /// </summary>
    internal class Sha256dData
    {
        /// <summary>
        /// 80-byte header that will be hashed over
        /// </summary>
        public IEnumerable<uint> Work { get; }
        /// <summary>
        /// 32-byte number that resulting hash must be less than or equal to
        /// </summary>
        public IEnumerable<uint> Target { get; }

        /// <summary>
        /// Driver will give up once it increments the nonce to this
        /// </summary>
        public uint MaxNonce { get; }

        /// <summary>
        /// Nonce to start at
        /// </summary>
        public uint StartNonce { get; }

        /// <summary>
        /// Initialize new Sha256Data
        /// </summary>
        /// <param name="work">80-byte header stored as enumerable of 4-byte integers</param>
        /// <param name="target">32-byte target stored as enumerable of 4-byte integers</param>
        /// <param name="maxNonce">Maximum nonce to end hash loop at</param>
        /// <param name="startNonce">Nonce to use for starting point</param>
        public Sha256dData(IEnumerable<uint> work, IEnumerable<uint> target, uint maxNonce, uint startNonce)
        {
            // The last 4 bytes of the header will be the nonce. Since start nonce will be the first nonce,
            // the driver may use this value as the starting point. Only take 19 uints (76 bytes) before to make sure the 
            // resulting work is 80 bytes long.
            Work = work.Take(19).Append(startNonce);
            Target = target;
            MaxNonce = maxNonce;
            StartNonce = startNonce;
        }
    }
}
