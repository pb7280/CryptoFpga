using CryptoFpga.Algorithms.Common;
using CryptoFpga.Common;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CryptoFpga.Algorithms.Sha256d.Tests
{
    [TestClass]
    public class DriverTest
    {
        private static readonly bool UseSoftware = SysInfo.UseSoftware;

        [TestMethod]
        public async Task CheckDriverAndPL()
        {
            // Bitcoin block #125552
            const string version = "01000000";
            const string prevHash = "81cd02ab7e569e8bcd9317e2fe99f2de44d49ab2b8851ba4a308000000000000";
            const string merkleRoot = "e320b6c2fffc8d750423db8b1eb942ae710e951ed797f7affc8892b0f1fc122b";
            const string time = "c7f5d74d";
            const string bits = "f2b9441a";
            // Start the nonce 5 lower than the golden nonce (0x42a14695), should take 5 hashes to complete
            // 5afeca88
            const string nonce = "42a14690";
            const string hex = version + prevHash + merkleRoot + time + bits;

            const string target = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000";

            var work = CryptoConvert.ToUInt32Enum(hex, false);
            var targ = CryptoConvert.ToUInt32Enum(target, false);

            var data = new Sha256dData(work, targ, 0x42a14700, Convert.ToUInt32(nonce, 16));

            using (var driver = CreateDriver())
            {
                var result = await driver.ScanHashAsync(data);
                Assert.IsTrue(result.ResultFound);
                Assert.AreEqual(0x42a14695u, result.GoldenNonce);
                Assert.AreEqual(6u, driver.CurrentStatus.TotalHashes);
            }
        }

        // This method just used to be certain unit tests are set to run on hardware in embedded test runs
        [TestMethod]
        public void IsLinux()
        {
            Assert.IsFalse(UseSoftware);
        }

        [TestMethod]
        public async Task CheckDriverAndPL2()
        {
            // Bitcoin block #3
            const string version = "01000000";
            var prevHeader = SwapEndian("000000006a625f06636b8bb6ac7b960a8d03705d1ace08b1a19da3fdcc99ddbd");
            var merkleRoot = SwapEndian("999e1c837c76a1b7fbb7e57baf87b309960f5ffefbf2a9b95dd890602272f644");
            const string time = "5dbe6649";
            var bits = SwapEndian("1d00ffff");
            const string nonce = "05e0ed63";  // 10 lower

            const string target = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000";

            var hex = version + prevHeader + merkleRoot + time + bits;

            var work = CryptoConvert.ToUInt32Enum(hex, false);
            var targ = CryptoConvert.ToUInt32Enum(target, false);

            var data = new Sha256dData(work, targ, 0x05e0ed6d + 1000, Convert.ToUInt32(nonce, 16));

            using (var driver = CreateDriver())
            {
                var result = await driver.ScanHashAsync(data);
                Assert.IsTrue(result.ResultFound);
                Assert.AreEqual(0x05e0ed6du, result.GoldenNonce);
                Assert.AreEqual(11u, driver.CurrentStatus.TotalHashes);
            }
        }

        [TestMethod]
        public async Task CheckDriverAndPL3()
        {
            // Bitcoin block #286819
            const string hex = "0200000017975b97c18ed1f7e255adf297599b55330edab87803c81701000000000000008a97295a2747b4f1a0b3948df3990344c0e19fa6b2b92b3a19c8e6badc141787358b0553535f011948750833";
            const string target = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000";

            var work = CryptoConvert.ToUInt32Enum(hex, false).ToList();
            var targ = CryptoConvert.ToUInt32Enum(target, false);

            var data = new Sha256dData(work, targ, 0x48750833 + 1000, work[19]);

            using (var driver = CreateDriver())
            {
                var result = await driver.ScanHashAsync(data);
                Assert.IsTrue(result.ResultFound);
                Assert.AreEqual(0x48750833u, result.GoldenNonce);
                Assert.AreEqual(1u, driver.CurrentStatus.TotalHashes);
            }
        }

        private static IDriver<Sha256dData> CreateDriver()
        {
            return UseSoftware ? (IDriver<Sha256dData>) new SoftDriver() : new HardDriver();
        }

        private static string SwapEndian(string data)
        {
            var sb = new StringBuilder();
            for (var i = data.Length - 2; i >= 0; i -= 2)
            {
                sb.Append(data.Substring(i, 2));
            }

            return sb.ToString();
        }
    }
}
