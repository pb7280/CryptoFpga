using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CryptoFpga.IO.Stratum.Tests
{
    [TestClass]
    public class JobTest
    {
        // Param order:
        //  Job ID
        //  Prev hash
        //  Coinbase 1
        //  Coinbase 2
        //  Merkle numbers (array)
        //  Version
        //  Bits (difficulty)
        //  Network time
        //  Clean jobs (usually true)

        // This Stratum command constructed from block 574216
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

        private const string ExtraNonce1 = "437f5a60";
        private const ulong ExtraNonce2 = 0;
        private const int Difficulty = 10000;

        // Known good header constructed from above Stratum command using ccminer
        private static readonly IReadOnlyList<uint> Header = new uint[]
        {
            0x00000020,  // Version
            0x74d67324,  // Prev block hash start
            0xa58bd99d,
            0xabad63ea,
            0x2e4c390e,
            0x2db432e2,
            0xdb380b00,
            0x00000000,
            0x00000000,  // Prev block hash end
            0x379f5ebf,  // Merkle root start
            0xd6faaffd,
            0x01f4b2f2,
            0x1322b504,
            0x2ed0612d,
            0x69c219a7,
            0x16eadbe8,
            0xe63da03d,  // Merkle root end
            0xb491ca5c,  // Network time
            0x114e2c17,  // Bits (difficulty)
            0x00000000   // Nonce
        };

        private static readonly IReadOnlyList<uint> Target = new uint[]
        {
            0x00000000,
            0x00000000,
            0x00000000,
            0x00000000,
            0x00000000,
            0x2d0e5604,
            0x00068db2,
            0x00000000
        };

        [TestMethod]
        public void FinalDataShouldMatch()
        {
            var command = Utilities.JsonDeserialize<StratumCommand>(TestJob);
            var j = new Job(command, ExtraNonce1, ExtraNonce2, Difficulty);

            var goldMerkleRoot = Header.Skip(9).Take(8).ToList();
            var merkleRoot = j.MerkleRoot.ToList();

            CollectionAssert.AreEqual(goldMerkleRoot, merkleRoot);

            var targ = j.Target.ToList();

            CollectionAssert.AreEqual((ICollection) Target, targ);

            // Append the start nonce (0)
            var header = j.Data.Append(0u).ToList();
            CollectionAssert.AreEqual((ICollection) Header, header);
        }
    }
}
