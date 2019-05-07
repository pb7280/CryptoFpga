using CryptoFpga.Algorithms.Common;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace CryptoFpga.Algorithms.Sha256d
{
    /// <summary>
    /// The role of the runner is to manage the driver and setup work on a per-job level
    /// </summary>
    public class Sha256dRunner : IRunner
    {
        private readonly IDriver<Sha256dData> _driver;

        /// <summary>
        /// Fires when new status is available from the driver
        /// </summary>
        public event EventHandler<ScanStatus> OnStatusUpdate;

        /// <summary>
        /// Most recent hash status
        /// </summary>
        public ScanStatus CurrentStatus => _driver.CurrentStatus;

        /// <summary>
        /// Initialize a new Sha256dRunner
        /// </summary>
        /// <param name="useSoftware">true if runner should use mock software driver</param>
        public Sha256dRunner(bool useSoftware = false)
        {
            _driver = useSoftware ? (IDriver<Sha256dData>) new SoftDriver() : new HardDriver();
            _driver.OnStatusUpdate += (s, e) => OnStatusUpdate?.Invoke(s, e);
        }

        /// <summary>
        /// Send work to driver and wait until golden nonce is found or until all values are exhausted
        /// </summary>
        public Task<ScanResult> ScanHash(IJob job) => ScanHash(job, CancellationToken.None);
        
        /// <summary>
        /// Send work to driver and wait until golden nonce is found or until all values are exhausted
        /// </summary>
        public async Task<ScanResult> ScanHash(IJob job, CancellationToken cancel)
        {
            // TODO implement statum conversion
            var data = new Sha256dData(job.Data, job.Target, 0xFFFFFFFF, 0);

            while (!cancel.IsCancellationRequested)
            {
                var result = await _driver.ScanHashAsync(data, cancel);

                if (!result.ResultFound) return result;

                // TODO include found nonce
                var checkData = new Sha256dData(data.Work, data.Target, result.GoldenNonce + 1, result.GoldenNonce);

                using (var softCheck = new SoftDriver())
                {
                    // Not passing cancel here, since operation will be very quick 
                    // And an improper check could result in an invalid share submission
                    var check = await softCheck.ScanHashAsync(checkData);
                    if (check.ResultFound) return check;
                }

                data = new Sha256dData(data.Work, data.Target, 0xFFFFFFFF, result.GoldenNonce + 1);
            }

            // Will only hit if cancel requested
            return ScanResult.NotFound;
        }

        public void Dispose()
        {
            _driver.Dispose();
        }
    }
}
