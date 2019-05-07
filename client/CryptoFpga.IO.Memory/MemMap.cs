using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace CryptoFpga.IO.Memory
{
    /// <summary>
    /// Represents a map to a specific entry point in /dev/mem
    /// </summary>
    public class MemMap : IDisposable
    {
        // Mirror of struct definition in native driver
        [StructLayout(LayoutKind.Sequential)]
        private readonly struct Map
        {
            public IntPtr Ptr { get; }
            public uint PageOffset { get; }
            public uint PageSize { get; }
        }

        // Native methods exposed by low-level driver library

        [DllImport("libsha256.so", EntryPoint = "open_map")]
        private static extern Map OpenMap(uint addr);

        [DllImport("libsha256.so", EntryPoint = "close_map")]
        private static extern void CloseMap(Map map);

        [DllImport("libsha256.so", EntryPoint = "write_int_map")]
        private static extern void WriteInt(Map map, uint offset, uint data);

        [DllImport("libsha256.so", EntryPoint = "read_int_map")]
        private static extern uint ReadInt(Map map, uint offset);

        private readonly Map _map;
        private readonly uint _address;

        // Used to allow only one MemMap to be instantiated for a given base address
        // Technically, two maps could coexist but we do not have a use case
        // for that, so this extra check is for safety
        private static readonly HashSet<uint> MappedBases = new HashSet<uint>();

        /// <summary>
        /// Open a map to specified address
        /// </summary>
        /// <param name="address"></param>
        public MemMap(uint address)
        {
            lock (MappedBases)
            {
                if (MappedBases.Contains(address))
                {
                    throw new InvalidOperationException("That base already mapped!");
                }

                _map = OpenMap(address);
                MappedBases.Add(address);
                _address = address;
            }
        }

        /// <summary>
        /// Write a 32-bit integer to the given offset
        /// </summary>
        public Task WriteIntAsync(uint offset, uint data)
        {
            // I/O operations in .NET generally use the async/Task pattern to not block threads
            // Task.Run() is a way to run an operation on a worker thread in case it blocks for a while
            return Task.Run(() =>
            {
                WriteInt(_map, offset, data);
            });
        }

        /// <summary>
        /// Read a 32-bit integer at the given offset
        /// </summary>
        public async Task WriteIntAsync(uint offset, IEnumerable<uint> data)
        {
            var i = 0u;
            foreach (var d in data)
            {
                await WriteIntAsync(offset + i++ * 4, d);
            }
        }

        public Task<uint> ReadIntAsync(uint offset)
        {
            return Task.Run(() => ReadInt(_map, offset));
        }

        // Because an instance of this class holds a resourse the managed GC does not know about,
        // and that resource must be released, this method MUST be called before the instance
        // gets GC'd
        public void Dispose()
        {
            try
            {
                // The actual release of the mem map through native library
                CloseMap(_map);

                lock (MappedBases)
                {
                    MappedBases.Remove(_address);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine($"Exception closing map: ${e.Message}");
            }

            // Since the mem map is now released, suppress the finalizer since its only job
            // was to make sure this method runs and finalizers are expensive
            GC.SuppressFinalize(this);
        }

        /// <summary>
        /// This finalizer will automatically run if user forgets to call Dispose() before GC
        /// collectsthis object. Ensures the mem map is released.
        /// </summary>
        ~MemMap()
        {
            Dispose();
        }
    }
}
