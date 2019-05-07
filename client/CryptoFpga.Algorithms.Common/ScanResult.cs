namespace CryptoFpga.Algorithms.Common
{
    /// <summary>
    /// Represents results of a hash scan
    /// </summary>
    public class ScanResult
    {
        /// <summary>
        /// True iff result hash under target was found
        /// </summary>
        public bool ResultFound { get; }

        /// <summary>
        /// Nonce that resulted in golden hash
        /// </summary>
        public uint GoldenNonce { get; }

        /// <summary>
        /// Shorthand creation of a failed result
        /// </summary>
        public static ScanResult NotFound => new ScanResult();

        /// <summary>
        /// A result where solution was found
        /// </summary>
        /// <param name="goldenNonce">Nonce that led to solution</param>
        public ScanResult(uint goldenNonce)
        {
            GoldenNonce = goldenNonce;
            ResultFound = true;
        }

        // Private since consumers should access through NotFound static property
        private ScanResult()
        { }
    }
}
