using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;

[assembly: InternalsVisibleTo("CryptoFpga.IO.Stratum.Tests")]

namespace CryptoFpga.IO.Stratum
{
    /// <summary>
    /// High-level representation of connection to stratum server
    /// </summary>
    public class StratumClient : IDisposable
    {
        private readonly StratumTcp _tcp;

        private int _sharesSubmitted;
        private int _sharesAccepted;
        private int _currentDifficulty;

        // Current extranonce values
        private string _extraNonce1 = "";
        private ulong _extraNonce2;

        // Queued jobs received from server
        private readonly Queue<Job> _jobs = new Queue<Job>();

        /// <summary>
        /// True iff connected to server
        /// </summary>
        public bool Connected => _tcp.Connected;

        /// <summary>
        /// Create a new StratumClient with specified connection parameters
        /// </summary>
        public StratumClient(string user, string password, string server, int port)
        {
            _tcp = new StratumTcp(server, port, user, password);

            _tcp.GotSetDifficulty += StratumGotSetDifficulty;
            _tcp.GotNotify += StratumGotNotify;
            _tcp.GotResponse += StratumGotResponse;
        }

        /// <summary>
        /// Open connection to server
        /// </summary>
        public Task OpenAsync()
        {
            return _tcp.ConnectToServer();
        }

        /// <summary>
        /// Submit completed job to server
        /// </summary>
        public async Task SubmitJobAsync(Job job, uint goldenNonce)
        {
            _sharesSubmitted++;

            await _tcp.SendSubmit(job.JobID, job.NetworkTime, goldenNonce.ToString("x8"), _currentDifficulty, job.ExtraNonce2);
        }

        /// <summary>
        /// Wait for server to send a job
        /// </summary>
        public Task<Job> WaitOnJobAsync() => WaitOnJobAsync(CancellationToken.None);

        /// <summary>
        /// Wait for server to send a job
        /// </summary>
        public async Task<Job> WaitOnJobAsync(CancellationToken cancel)
        {
            while (!cancel.IsCancellationRequested)
            {
                lock (_jobs)
                {
                    if (_jobs.Count > 0)
                    {
                        var job = _jobs.Dequeue();
                        if (job.CleanJobs) _extraNonce2 = 0;

                        _extraNonce2++;

                        return job;
                    }
                }

                await Task.Delay(500, cancel);
            }

            return null;
        }

        // Callback for response from server
        private void StratumGotResponse(object sender, StratumResponseEventArgs e)
        {
            Console.Write("Got Response to {0} - ", (string) sender);

            switch ((string) sender)
            {
                case "mining.authorize":
                    if ((bool) e.Response.Result)
                        Console.WriteLine("Worker authorized");
                    else
                    {
                        throw new Exception("Worker not authorized");
                    }
                    break;

                case "mining.subscribe":
                    _extraNonce1 = (string) ((object[]) e.Response.Result)[1];
                    Console.WriteLine("Subscribed. ExtraNonce1 set to " + _extraNonce1);
                    break;

                case "mining.submit":
                    if (e.Response.Result != null && (bool) e.Response.Result)
                    {
                        _sharesAccepted++;
                        Console.WriteLine("Share accepted ({0} of {1})", _sharesAccepted, _sharesSubmitted);
                    }
                    else
                        Console.WriteLine("Share rejected. {0}", e.Response.Error[1]);
                    break;
            }
        }

        // Server changing difficulty callback
        private void StratumGotSetDifficulty(object sender, StratumCommandEventArgs e)
        {
            _currentDifficulty = Convert.ToInt32(e.Command.Parameters[0]);

            Console.WriteLine("Got Set_Difficulty " + _currentDifficulty);
        }

        // Server sending new work callback
        private void StratumGotNotify(object sender, StratumCommandEventArgs e)
        {
            var thisJob = new Job(e.Command, _extraNonce1, _extraNonce2, _currentDifficulty);

            lock (_jobs)
            {
                // Cancel the existing mining threads and clear the queue if CleanJobs = true
                if (thisJob.CleanJobs)
                {
                    Console.WriteLine("Stratum detected a new block. Stopping old threads.");

                    _jobs.Clear();
                }

                // Add the new job to the queue
                _jobs.Enqueue(thisJob);
            }
        }

        public void Dispose()
        {
            _tcp.Dispose();
        }
    }
}
