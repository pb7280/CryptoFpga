using System;
using System.Collections.Generic;
using System.Linq;

namespace CryptoFpga.Common
{
    public static class CryptoConvert
    {
        /// <summary>
        /// Convert a byte array to uint enumerable
        /// </summary>
        public static IEnumerable<uint> ToUInt32Enum(byte[] bytes)
        {
            for (var i = 0; i < bytes.Length; i += 4)
            {
                yield return BitConverter.ToUInt32(bytes, i);
            }
        }

        /// <summary>
        /// Convert a hex string to uint enumerable
        /// </summary>
        /// <param name="str">Hex string to convert</param>
        /// <param name="swab">True to swab endian in 4 byte words</param>
        /// <returns></returns>
        public static IEnumerable<uint> ToUInt32Enum(string str, bool swab = true)
        {
            if (str.Length % 8 != 0)
                throw new ArgumentException($"{nameof(str)} must be length multiple of 8! Off by {str.Length % 8}");

            for (var i = 0; i < str.Length; i += 8)
            {
                var intString = str.Substring(i, 8);
                var u = Convert.ToUInt32(intString, 16);
                if (!swab)
                {
                    yield return u;
                }
                else
                {
                    yield return Swab32(u);
                }
            }
        }

        /// <summary>
        /// Convert a uint enumerable to byte enumerable
        /// </summary>
        /// <param name="uints">uint enumerable</param>
        /// <param name="swab">true to swab in 4 byte words</param>
        public static IEnumerable<byte> ToByteEnum(IEnumerable<uint> uints, bool swab = true)
        {
            return uints.SelectMany(b =>
            {
                var bytes = BitConverter.GetBytes(b);
                return swab ? bytes.Reverse() : bytes;
            });
        }

        /// <summary>
        /// Convert a hex string to byte enumerable
        /// </summary>
        /// <param name="str">Hex string</param>
        /// <param name="swab">True to swab in 4 byte words</param>
        public static IEnumerable<byte> ToByteEnum(string str, bool swab = false)
        {
            if (str.Length % 2 != 0)
                throw new ArgumentException("String length must be multiple of 2!");

            var start = swab ? 6 : 0;
            var upper = swab ? 0 : 6;
            var incr = swab ? -2 : 2;
            var pad = str.Length % 8;

            for (var i = 0; i < str.Length; i += 8)
            {
                if (i == str.Length - pad)
                {
                    start = swab ? pad : 0;
                    upper = pad - 2;
                }
                for (var j = start; swab ? (j >= 0) : j <= upper; j += incr)
                {
                    yield return Convert.ToByte(str.Substring(i + j, 2), 16);
                }
            }
        }

        /// <summary>
        /// Swab a uint byte order
        /// </summary>
        public static uint Swab32(uint x)
        {
            return ((x << 24) & 0xff000000u) | ((x << 8) & 0x00ff0000u) |
                   ((x >> 8) & 0x0000ff00u) | ((x >> 24) & 0x000000ffu);
        }

        /// <summary>
        /// Swab a byte list or array in 4 byte words
        /// </summary>
        public static void Swab32(IList<byte> byteArray)
        {
            if (byteArray.Count % 4 != 0)
            {
                throw new ArgumentException("The byte array length must be a multiple of 4");
            }

            for (var index = 0; index < byteArray.Count; index += 4)
            {
                var temp = byteArray[index];
                byteArray[index] = byteArray[index + 3];
                byteArray[index + 3] = byteArray[index + 2];
                byteArray[index + 2] = byteArray[index + 1];
                byteArray[index + 1] = byteArray[index + 3];
                byteArray[index + 3] = temp;
            }
        }
    }
}
