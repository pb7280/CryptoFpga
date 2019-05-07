namespace CryptoFpga.Algorithms.Common
{
    /// <summary>
    /// Represents a hashrate, typically expressed in Hashes per second (H/s)
    /// </summary>
    public readonly struct Hashrate
    {
        // _value holds the hashrate in H/s
        private readonly double _value;

        private Hashrate(double d)
        {
            _value = d;
        }

        /// <summary>
        /// Implicit conversion from double to Hashrate
        /// Allows operations such as `Hashrate h = 0.1;`
        /// </summary>
        public static implicit operator Hashrate(double d)
        {
            return new Hashrate(d);
        }

        /// <summary>
        /// Implicit conversion from hashrate to double
        /// Allows operations such as `double d = obj.Hashrate;`
        /// </summary>
        public static implicit operator double(Hashrate h)
        {
            return h._value;
        }

        /// <summary>
        /// Get a string representation of this object, formatted with magnitude scales
        /// </summary>
        public override string ToString()
        {
            // Typical hashrate expression follows SI units kilo-, mega-, giga-, etc.
            // E.g. we don't say 12000000 H/s we say 12 MH/s

            string ret;

            if (_value < 1000)
                ret = $"{_value:F3} ";
            else if (_value < 100000)
                ret = $"{_value * 0.001:F3} k";
            else if (_value < 100000000)
                ret = $"{_value * 0.000001:F3} M";
            else
                ret = $"{_value * 0.000000001:F3} G";

            return ret + "H/s";
        }
    }
}
