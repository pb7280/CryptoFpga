using System;
using System.Collections.Generic;
using System.Text;

namespace CryptoFpga.Algorithms.Common
{
    /// <summary>
    /// A contract for a job that can be consumed by an IRunner
    /// </summary>
    public interface IJob
    {
        IEnumerable<uint> Target { get; }
        IEnumerable<uint> Data { get; }
    }
}
