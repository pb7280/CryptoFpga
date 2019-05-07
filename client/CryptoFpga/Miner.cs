using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using CryptoFpga.Algorithms.Common;
using CryptoFpga.IO.Stratum;

namespace CryptoFpga
{
    internal class Miner<T> : IDisposable where T : IRunner
    {
        public event EventHandler<ScanStatus> OnStatusUpdate;

        private readonly T _runner;
        private readonly StratumClient _stratum;

        private readonly bool _bench;

        public bool StratumConnected => _stratum.Connected;

        /// <summary>
        /// Create a new Miner that will connect to a stratum pool
        /// </summary>
        public Miner(T runner, string user, string password, string server, int port)
            : this(runner)
        {
            _bench = false;

            _stratum = new StratumClient(user, password, server, port);
        }

        /// <summary>
        /// Create a new Miner that will run an offline benchmark
        /// </summary>
        public Miner(T runner)
        {
            _runner = runner;
            _runner.OnStatusUpdate += (s, e) => OnStatusUpdate?.Invoke(s, e);

            _bench = true;
        }

        /// <summary>
        /// Opens connection to pool. If offline benchmark enabled, does nothing.
        /// </summary>
        public Task OpenStratumAsync()
        {
            return _bench ? Task.CompletedTask : _stratum.OpenAsync();
        }

        /// <summary>
        /// Run main mining loop, does not return unless cancellation is requested.
        /// </summary>
        public async Task MineAsync(CancellationToken cancel)
        {
            if (!_bench && !StratumConnected)
                throw new InvalidOperationException("Cannot mine without stratum connection!");
            if (_bench)
                Console.WriteLine("Starting benchmark...");

            var job = await WaitOnJobAsync(cancel);

            while (!cancel.IsCancellationRequested)
            {
                var result = await _runner.ScanHash(job, cancel);

                if (result.ResultFound)
                {
                    // Submit share
                    if (!_bench)
                        await _stratum.SubmitJobAsync(job, result.GoldenNonce);

                    // Break loop here if cancelled so possible good share still gets submitted
                    // Could omit this since WaitOnJob will return immediately if cancel requested,
                    // But for safety
                    if (cancel.IsCancellationRequested) break;

                    // Get a new job for next loop
                    job = await WaitOnJobAsync(cancel);
                }
                else
                {
                    // Did not find result through all nonce values, increment extranonce and try again
                    job.ExtraNonce2++;
                }
            }
        }

        /// <summary>
        /// Waits until a job is available. If running offline benchmark, immediately returns test job.
        /// </summary>
        private async Task<Job> WaitOnJobAsync(CancellationToken cancel)
        {
            return _bench ? Job.BenchJob : await _stratum.WaitOnJobAsync(cancel);
        }

        public void Dispose()
        {
            _runner.Dispose();
            _stratum?.Dispose();
        }
    }
}
