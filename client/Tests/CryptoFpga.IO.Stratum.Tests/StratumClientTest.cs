using System.Threading;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Threading.Tasks;

namespace CryptoFpga.IO.Stratum.Tests
{
    [TestClass]
    public class StratumClientTest
    {
        //miner --server eu.btcprivate.pro --port 2827 --user[WALLET].[WORKER] --pass x --pec
        private const string Btc = "1K52u8wsZrWU9HgFjQG7fX2SZzWjAAj6N8";

        // For this test we are only checking the client can connect and wait for a job
        // without raising an exception
        [TestMethod]
        public async Task ShouldAuthorize()
        {
            using (var client = new StratumClient(Btc, "x", "solo.ckpool.org", 3333))
            {
                await client.OpenAsync();
                Assert.IsTrue(client.Connected);

                var j = await client.WaitOnJobAsync();
            }
        }
    }
}
