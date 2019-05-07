using CryptoFpga.Common;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Json;
using System.Security.Cryptography;
using System.Text;

namespace CryptoFpga.IO.Stratum
{
    internal static class Utilities
    {
        /// <summary>
        /// Generate merkle root hash from given tree node numbers
        /// </summary>
        /// <param name="coinb1">Coinbase 1</param>
        /// <param name="coinb2">Coinbase 2</param>
        /// <param name="extraNonce1">Upper extranonce</param>
        /// <param name="extraNonce2">Lower extranonce</param>
        /// <param name="merkleNumbers">Hashes of other nodes in the tree</param>
        /// <returns>Merkle root hash</returns>
        public static IEnumerable<uint> GenerateMerkleRoot(string coinb1, string coinb2, string extraNonce1, string extraNonce2, IEnumerable<string> merkleNumbers)
        {
            var coinbase = coinb1 + extraNonce1 + extraNonce2 + coinb2;

            var coinbasebytes = CryptoConvert.ToByteEnum(coinbase).ToArray();

            byte[] hashValue2;

            using (var mySha256 = SHA256.Create())
            {
                mySha256.Initialize();

                // Create Coinbase hash by DoubleSHA of Coinbase
                var hashValue = mySha256.ComputeHash(coinbasebytes);
                hashValue2 = mySha256.ComputeHash(hashValue);

                // Calculate Merkle Root by double-hashing the Coinbase hash with each Merkle number in turn
                foreach (var s in merkleNumbers)
                {
                    hashValue = mySha256.ComputeHash(hashValue2.Concat(CryptoConvert.ToByteEnum(s)).ToArray());
                    hashValue2 = mySha256.ComputeHash(hashValue);
                }
            }

            CryptoConvert.Swab32(hashValue2);

            return CryptoConvert.ToUInt32Enum(hashValue2);
        }

        /// <summary>
        /// Generates full 256-bit target number from compact difficulty form
        /// </summary>
        /// <param name="difficulty">Difficulty in compact form</param>
        /// <returns>Target</returns>
        public static IEnumerable<uint> GenerateTarget(int difficulty)
        {
            int k;
            var d = (double) difficulty;

            for (k = 6; k > 0 && d > 1; k--)
            {
                d /= 4294967296;
            }

            var m = (ulong) (4294901760 / d);
            if (m == 0 && k == 6)
            {
                for (var i = 0; i < 8; i++)
                {
                    yield return 0xffffffff;
                }
            }
            else
            {
                for (var i = 0; i < 8; i++)
                {
                    if (i == k) yield return (uint) m;
                    else if (i == k + 1) yield return (uint) (m >> 32);
                    else yield return 0;
                }
            }
        }

        /// <summary>        
        /// Serializes an object to a UTF-8 encoded JSON string.        
        /// </summary>        
        /// <param name="obj">object to serialize</param>        
        /// <returns>JSON string result</returns>        
        public static string JsonSerialize(object obj)
        {
            // Serialize to a memory stream....            
            var ms = new MemoryStream();

            // Serialize to memory stream with DataContractJsonSerializer            
            var s = new DataContractJsonSerializer(obj.GetType());
            s.WriteObject(ms, obj);
            var json = ms.ToArray();
            ms.Close();

            // Return utf8 encoded json string            
            return Encoding.UTF8.GetString(json, 0, json.Length);
        }

        /// <summary>        
        /// Deserializes an object from a UTF-8 encoded JSON string.        
        /// </summary>        
        /// <typeparam name="T">type of object to deserialize as</typeparam>        
        /// <param name="json">UTF-8 encoded JSON string</param>        
        /// <returns>deserialized object</returns>        
        public static T JsonDeserialize<T>(string json)
        {
            // Load json into memorystream and deserialize            
            var ms = new MemoryStream(Encoding.UTF8.GetBytes(json));

            var s = new DataContractJsonSerializer(typeof(T));
            var result = (T)s.ReadObject(ms);
            ms.Close();
            return result;
        }
    }
}
