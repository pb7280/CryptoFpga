using System.Runtime.InteropServices;

namespace CryptoFpga.Common
{
    public static class SysInfo
    {
        /// <summary>
        /// True iff running under Windows OS, otherwise hardware will be tried
        /// </summary>
        public static bool UseSoftware { get; }

        static SysInfo()
        {
            UseSoftware = RuntimeInformation.IsOSPlatform(OSPlatform.Windows);
        }
    }
}
