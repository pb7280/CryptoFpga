using System;
using System.Collections.Generic;
using System.Linq;
using CryptoFpga.Algorithms.Common;
using CryptoFpga.Common;

namespace CryptoFpga.IO.Stratum
{
    /// <summary>
    /// Represents a job as sent by the Stratum server
    /// </summary>
    public class Job : IJob
    {
        // Inputs
        /// <summary>
        /// ID, used for submission to server
        /// </summary>
        public string JobID { get; }
        /// <summary>
        /// Final hash of previous block (32 bytes)
        /// </summary>
        public string PreviousHash { get; }
        /// <summary>
        /// Coinbase 1
        /// </summary>
        public string Coinb1 { get; }
        /// <summary>
        /// Coinbase 2
        /// </summary>
        public string Coinb2 { get; }
        /// <summary>
        /// List/array of merkle numbers to calculate merkle root
        /// </summary>
        public IReadOnlyList<string> MerkleNumbers { get; }
        /// <summary>
        /// Network version (4 bytes)
        /// </summary>
        public string Version { get; }
        /// <summary>
        /// Network difficulty (4 bytes)
        /// </summary>
        public string NetworkDifficulty { get; }
        /// <summary>
        /// Network time (4 bytes)
        /// </summary>
        public string NetworkTime { get; }
        /// <summary>
        /// True if all other jobs should be cancelled and replaced
        /// </summary>
        public bool CleanJobs { get; }

        // Intermediate
        /// <summary>
        /// 256-bit integer that final hash must be less than or equal to (32 bytes)
        /// </summary>
        public IEnumerable<uint> Target { get; }
        /// <summary>
        /// Full header data (80 bytes)
        /// </summary>
        public IEnumerable<uint> Data => _dataUpper.Concat(MerkleRoot).Concat(_dataLower);
        /// <summary>
        /// Root hash of merkle tree describing transactions in the block (32 bytes)
        /// </summary>
        public IEnumerable<uint> MerkleRoot { get; private set; }

        // Arbitrary-length extra nonce value
        private readonly string _extraNonce1;
        private ulong _extraNonce2;
        /// <summary>
        /// 8 byte integer that can be arbitrarily used to increase nonce space when regular nonce wraps
        /// </summary>
        public ulong ExtraNonce2
        {
            get => _extraNonce2;
            set
            {
                _extraNonce2 = value;
                MerkleRoot = Utilities.GenerateMerkleRoot(Coinb1, Coinb2, _extraNonce1, value.ToString("x16"), MerkleNumbers);
            }
        }

        // Cache of upper bytes of header (above merkle root)
        private readonly IEnumerable<uint> _dataUpper;
        // Cache of bytes of header below merkle root
        private readonly IEnumerable<uint> _dataLower;

        public Job(StratumCommand command, string extraNonce1, ulong extraNonce2, int diff)
        {
            // Raw values from stratum command
            JobID = (string) command.Parameters[0];
            PreviousHash = (string) command.Parameters[1];
            Coinb1 = (string) command.Parameters[2];
            Coinb2 = (string) command.Parameters[3];
            var a = (object[]) command.Parameters[4];
            Version = (string) command.Parameters[5];
            NetworkDifficulty = (string) command.Parameters[6];
            NetworkTime = (string) command.Parameters[7];
            CleanJobs = (bool) command.Parameters[8];

            // Convert from object[] to List<string>
            MerkleNumbers = a.Cast<string>().ToList();

            // Cache for later merkle root regeneration
            _extraNonce1 = extraNonce1;
            // Sets value and calculates merkle root
            ExtraNonce2 = extraNonce2;

            Target = Utilities.GenerateTarget(diff);

            // Cache these values so the header can be updated without recalculating when merkle root changes
            // ToList() is required to cache (otherwise enumeration will happen every time Data is called)
            _dataUpper = CryptoConvert.ToUInt32Enum(Version + PreviousHash).ToList();
            _dataLower = CryptoConvert.ToUInt32Enum(NetworkTime + NetworkDifficulty).ToList();
        }

        #region Benchmark

        // Block 574216
        private const string TestJob =
            @"{
    ""params"":
    [   
        ""5b29d6990007be39"",
        ""2473d6749dd98ba5ea63adab0e394c2ee232b42d000b38db0000000000000000"",
        ""01000000010000000000000000000000000000000000000000000000000000000000000000ffffffff350308c3080004b491ca5c046a523d120c"",
        ""0a636b706f6f6c112f736f6c6f2e636b706f6f6c2e6f72672fffffffff03f355264b000000001976a914c6358359c5e7f7ad630aae0b9beae1ebadcb4d7388ac9d53c200000000001976a914f4cbe6c6bb3a8535c963169c22963d3a20e7686988ac0000000000000000266a24aa21a9edb7d8666e7a16cad1d4a441f4ba6e1a9163f7e482e16faece37e2340907bc6b5600000000"",
        [
            ""da36dc21d9c0aafd0e955ecbbe5aaf26b70a95718f1c4c49c5630f20d8a9b9a0"",
            ""bbaea7dc6d6fe91ce6659dcb9db195d3a44846c25af50c57b867d1ebb572e1d4"",
            ""a1e4e86f130a5056926f634c2a7173ecf07eeec6bbc022c270ca254881e7b0e3"",
            ""2119db3df84027a635de2df8cf2f00eaab22e941c6ad094f3dc37ae3949df717"",
            ""6e8833e47037c752cd5938ab9ba1c3d3a4505283710ee3abf4685a50482d15a0"",
            ""185ecd438b91bac2f10ccf742a5c09990205cfe32903e4829f0affd44d5513b4"",
            ""5ac6824927efdb187761053b6a1b8d48a8837a4e83fe286e17542f5eb70a765a"",
            ""d71b426d5651670f424902e4f2f8e3683ddc28e70a9121e93b716e6e5217ab60"",
            ""8dac92fb855e7d971df01c65cfc6a8ef74921b3fc37b3360d60b4bc87df80643"",
            ""340cf318a5bead93fc42f28770c85854d130b7f94537c81035843623e07c54b3"",
            ""07e42097748351ea63ac76b5c720c35f4b64976664fbf59164d8d4b1f9dedc39"",
            ""35c2f42ed8e8e5ca128abf8d637872da60042547a5e2ad367c91f6ab1050c421""
        ],
        ""20000000"",
        ""172c4e11"",
        ""5cca91b4"",
        true
    ],
    ""id"":null,
    ""method"":""mining.notify""
}";

        private const string TestExtraNonce1 = "437f5a60";
        private const ulong TestExtraNonce2 = 0;
        private const int TestDifficulty = 10000;

        /// <summary>
        /// Test job that can be used for offline benchmarking
        /// </summary>
        public static Job BenchJob
        {
            get
            {
                var command = Utilities.JsonDeserialize<StratumCommand>(TestJob);
                return new Job(command, TestExtraNonce1, TestExtraNonce2, TestDifficulty);
            }
        }

        #endregion
    }
}
