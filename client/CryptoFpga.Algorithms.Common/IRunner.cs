using System;
using System.Threading;
using System.Threading.Tasks;

namespace CryptoFpga.Algorithms.Common
{
    /// <summary>
    /// A contract specifying a runner that can run jobs
    /// </summary>
    public interface IRunner : IDisposable
    {
        event EventHandler<ScanStatus> OnStatusUpdate;
        ScanStatus CurrentStatus { get; }
        Task<ScanResult> ScanHash(IJob job);
        Task<ScanResult> ScanHash(IJob job, CancellationToken cancel);
    }
}
