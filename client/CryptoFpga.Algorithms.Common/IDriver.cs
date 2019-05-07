using System;
using System.Threading;
using System.Threading.Tasks;

namespace CryptoFpga.Algorithms.Common
{
    /// <summary>
    /// Contract for a driver that can provide base methods for solving hashes
    /// </summary>
    /// <typeparam name="T">Type of data driver will need for running</typeparam>
    public interface IDriver<in T> : IDisposable
    {
        ScanStatus CurrentStatus { get; }

        event EventHandler<ScanStatus> OnStatusUpdate;

        Task<ScanResult> ScanHashAsync(T data, CancellationToken cancel);
        Task<ScanResult> ScanHashAsync(T data);
    }
}
