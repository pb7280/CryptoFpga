using CryptoFpga.Algorithms.Sha256d;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using CryptoFpga.Algorithms.Common;
using CryptoFpga.Common;

namespace CryptoFpga
{
    internal static class Program
    {
        private const string DefaultUser = "1K52u8wsZrWU9HgFjQG7fX2SZzWjAAj6N8";
        private const string DefaultPass = "x";
        private const string DefaultPool = "solo.ckpool.org";
        private const int DefaultPort = 3333;
        private static bool UseSoftware => SysInfo.UseSoftware;

        private static CancellationTokenSource _cancelSource;

        private static async Task Main(string[] args)
        {
            // Set default parameters
            var user = DefaultUser;
            var pass = DefaultPass;
            var pool = DefaultPool;
            var port = DefaultPort;
            var useSoftware = UseSoftware;
            var benchmark = false;

            // Parse command line

            for (var i = 0; i < args.Length; i++)
            {
                switch (args[i])
                {
                    case "-u":
                        if (args.Length < i + 1) goto default;

                        user = args[++i];
                        break;
                    case "-p":
                        if (args.Length < i + 1) goto default;

                        pass = args[++i];
                        break;
                    case "-o":
                        if (args.Length < i + 1) goto default;

                        pool = args[++i];
                        break;
                    case "-P":
                        if (args.Length < i + 1) goto default;

                        if (int.TryParse(args[++i], out port))
                        {
                            break;
                        }
                        else
                        {
                            goto default;
                        }
                    case "--use-software":
                        useSoftware = true;
                        break;
                    case "-b":
                    case "--benchmark":
                        benchmark = true;
                        break;
                    case "-h":
                    case "--help":
                        PrintHelp();
                        return;
                    default:
                        Console.WriteLine($"Error with parameter {args[i]}");
                        PrintHelp();
                        return;
                }
            }

            // Setup runner with software option
            var runner = new Sha256dRunner(useSoftware);

            // Setup miner wrapper and cancel token source
            using (var miner = benchmark ? 
                new Miner<Sha256dRunner>(runner) : 
                new Miner<Sha256dRunner>(runner, user, pass, pool, port))
            using (_cancelSource = new CancellationTokenSource())
            {
                // Listen for status updates
                miner.OnStatusUpdate += MinerOnOnStatusUpdate;
                // Open connection to pool
                await miner.OpenStratumAsync();

                // Run input checker on other thread
                var t = new Thread(CheckInput);
                t.Start();

                // Wait for mining to finish
                await miner.MineAsync(_cancelSource.Token);
            }
        }

        private static void MinerOnOnStatusUpdate(object sender, ScanStatus e)
        {
            Console.WriteLine(e);
        }

        private static void CheckInput()
        {
            while (true)
            {
                // ReadKey() will block until user presses a key
                var key = Console.ReadKey().Key;
                if (key == ConsoleKey.Q)
                {
                    _cancelSource.Cancel();
                }
            }
        }

        private static void PrintHelp()
        {
            var sb = new StringBuilder("CryptoFpga: valid parameters [default]");
            sb.AppendLine($"\t-u set username [{DefaultUser}]");
            sb.AppendLine($"\t-p set password [{DefaultPass}]");
            sb.AppendLine($"\t-o set pool address [{DefaultPool}]");
            sb.AppendLine($"\t-P set port [{DefaultPort}]");
            sb.AppendLine($"\t--use-software override detected platform and run with software drivers [{UseSoftware}]");
            sb.AppendLine("\t-h | --help print this message");
            sb.AppendLine("\t-b | --benchmark run an offline benchmark");

            Console.WriteLine(sb.ToString());
        }
    }
}
