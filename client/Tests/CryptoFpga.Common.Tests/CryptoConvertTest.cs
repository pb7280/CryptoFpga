using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CryptoFpga.Common.Tests
{
    [TestClass]
    public class CryptoConvertTest
    {
        [TestMethod]
        public void StrToByteShouldMatch()
        {
            const string test = "0123456789ab";

            var bytes = CryptoConvert.ToByteEnum(test).ToList();
            var goldBytes = new byte[] { 0x01, 0x23, 0x45, 0x67, 0x89, 0xab };
            CollectionAssert.AreEqual(goldBytes, bytes);
        }
    }
}
