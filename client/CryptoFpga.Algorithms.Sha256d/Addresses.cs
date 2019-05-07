namespace CryptoFpga.Algorithms.Sha256d
{
    /// <summary>
    /// Describes the base and offset addresses for PL
    /// </summary>
    internal static class Addresses
    {
        // --HLS Core memory offset--
        public const uint Sha256Base = 0x43c00000;

        // --AXI CTRL_BUS offsets that we need--
        // (control signals are 0 offset implicitly)
        public const uint Sha256Work = 0x80;
        public const uint Sha256Target = 0x100;
        public const uint Sha256MaxNonce = 0x120;
        public const uint Sha256Return = 0x10;

        // These are not utilized but are functional through the MemMap we use for HLS core communication
        // We don't need them but could be useful for future feature additions
        public const uint LedBase = 0x41220000;
        public const uint DipSwitchBase = 0x41210000;
        public const uint PushSwitchBase = 0x41200000;
    }
}
