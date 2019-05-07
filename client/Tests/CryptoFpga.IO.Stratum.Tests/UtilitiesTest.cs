using System;
using System.Collections.Generic;
using System.Linq;
using CryptoFpga.Common;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CryptoFpga.IO.Stratum.Tests
{
    [TestClass]
    public class UtilitiesTest
    {
        private const string TestJob =
@"{
    ""params"":
    [
        ""5b29d6990007b505"",
        ""f98de294f611d8eacb98f1a1fdb4c98a8807c4aa00056e680000000000000000"",
        ""01000000010000000000000000000000000000000000000000000000000000000000000000ffffffff350316c208000477a9c85c044a0a2c1b0c"",
        ""0a636b706f6f6c112f736f6c6f2e636b706f6f6c2e6f72672fffffffff0313c9504d000000001976a914c6358359c5e7f7ad630aae0b9beae1ebadcb4d7388ac58edc700000000001976a914f4cbe6c6bb3a8535c963169c22963d3a20e7686988ac0000000000000000266a24aa21a9ed2308b2482d693f9cae2d4ff126f0dac4d86579a5668059cd6745bbeb122c5f9a00000000"",
        [
            ""2c7d7231fcbe7c9ae357e07e6c948fe6317e89c4a99216e37a8eedcae81c6eef"",
            ""f119bfdcdd4de3caa34ec742583b70ec303b27dd400918ae68b10f72ba0e01e5"",
            ""be7917f7f962260abda1ffdad1cfcc5ac7bf525812d8be5445c582eb2315cb46"",
            ""c2ed1f49f8ac84c15c80f88c5271a66f7976d9bd1668fd0add3d289560afaa88"",
            ""72240b87fcdff263f3ab8b604f8ecfdb988ad27331dcd5e7271bd55dde46875e"",
            ""321f776fb4c271a8da4aff7b54623eb2f629e68f88bad218ecc5030146a62769"",
            ""822a217e2ac07408dd8d0111a12995fa2568fbe726c75d35e7d65d3ba1d42a53"",
            ""a2daa387c2b8f5ea68072d8a86e65a7eb5904515f49628b057406f078d8035a3"",
            ""75d1414a08c9ec550876c8abb0c21ab2e7aa5e474fcb13101e1c9438219c7d64"",
            ""c04309797a2a6f70a7b1d566a1b962aed092b82b1ac0238cb005b82e66d36a59"",
            ""f11df5f5b04e5882d6ab62d84f60172286de5f20f0ec267c2a4b0b8eca6399d8""
        ],
        ""20000000"",
        ""172c4e11"",
        ""5cc8a977"",
        true
    ],
    ""id"":null,
    ""method"":""mining.notify""
}";

        // Simple test that the above command parses as a JSON object
        [TestMethod]
        public void JobShouldParse()
        {
            var command = Utilities.JsonDeserialize<StratumCommand>(TestJob);

            Assert.IsNull(command.Id);
            Assert.AreEqual("mining.notify", command.Method);
            Assert.AreEqual(9, command.Parameters.Count);

            var j = new Job(command, "", 0, 1);

            Assert.AreEqual("5b29d6990007b505", j.JobID);
            Assert.AreEqual("f98de294f611d8eacb98f1a1fdb4c98a8807c4aa00056e680000000000000000", j.PreviousHash);
            Assert.AreEqual("01000000010000000000000000000000000000000000000000000000000000000000000000ffffffff350316c208000477a9c85c044a0a2c1b0c", j.Coinb1);
            Assert.AreEqual("0a636b706f6f6c112f736f6c6f2e636b706f6f6c2e6f72672fffffffff0313c9504d000000001976a914c6358359c5e7f7ad630aae0b9beae1ebadcb4d7388ac58edc700000000001976a914f4cbe6c6bb3a8535c963169c22963d3a20e7686988ac0000000000000000266a24aa21a9ed2308b2482d693f9cae2d4ff126f0dac4d86579a5668059cd6745bbeb122c5f9a00000000", j.Coinb2);

            Assert.AreEqual(11, j.MerkleNumbers.Count);

            Assert.AreEqual("2c7d7231fcbe7c9ae357e07e6c948fe6317e89c4a99216e37a8eedcae81c6eef", j.MerkleNumbers[0]);
            Assert.AreEqual("f11df5f5b04e5882d6ab62d84f60172286de5f20f0ec267c2a4b0b8eca6399d8", j.MerkleNumbers[10]);
            Assert.AreEqual("72240b87fcdff263f3ab8b604f8ecfdb988ad27331dcd5e7271bd55dde46875e", j.MerkleNumbers[4]);

            Assert.AreEqual("20000000", j.Version);
            Assert.AreEqual("172c4e11", j.NetworkDifficulty);
            Assert.AreEqual("5cc8a977", j.NetworkTime);
            Assert.IsTrue(j.CleanJobs);
        }

        // Check merkle root calculation
        [TestMethod]
        public void GeneratedMerkleShouldMatch()
        {
            const string coinb1 = "01000000010000000000000000000000000000000000000000000000000000000000000000ffffffff2703d72707062f503253482f049a53985208";
            const string coinb2 = "0d2f7374726174756d506f6f6c2f0000000001923f6f2e010000001976a9145b771921a9b47ee8104da7e4710b5f633d95fa7388ac00000000";
            const string extraNonce1 = "f8025672";
            const string extraNonce2 = "00000001";

            var merkleNumbers = new List<string>
            {
                "a7f97d9ec804c539b375f2997bc12d32269d105a5281f2403c14fb1833b70f0c",
                "04bd5a1f74d2beece0c893d742c51dd9b9f2e08e2686008d258f23461288a2cd",
                "303ec9c3092b926f862ee2bd70b629e270e836eba86df9b55f9d795439163b13",
                "2d43210a4fb228cf18001b630d0d45ca509b3db8ec3a40586b022546822b0dea",
                "caf00c196faef37f97da33e8c6ef3cbc233f172a9a062d72f0dfd3ee17af291c"
            };

            var merkle = Utilities.GenerateMerkleRoot(coinb1, coinb2, extraNonce1, extraNonce2, merkleNumbers).ToList();
            var goldMerkle = CryptoConvert.ToUInt32Enum("3c43e4bf024c2900181bd2f94bd7ebd5d3298f6d47f4f899b952acfd6aa6d94e").ToList();

            CollectionAssert.AreEqual(goldMerkle, merkle);
        }
    }
}
