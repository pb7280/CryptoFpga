using System;
using System.Collections;
using System.Diagnostics;
using System.Net.Sockets;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CryptoFpga.IO.Stratum
{
    /// <summary>
    /// Represents a low level TCP connection to a Stratum server
    /// </summary>
    internal class StratumTcp : IDisposable
    {
        /// <summary>
        /// Fires when difficulty is updated
        /// </summary>
        public event EventHandler<StratumCommandEventArgs> GotSetDifficulty;
        /// <summary>
        /// Fires when job notification is received
        /// </summary>
        public event EventHandler<StratumCommandEventArgs> GotNotify;
        /// <summary>
        /// Fires when a response to submission is received
        /// </summary>
        public event EventHandler<StratumResponseEventArgs> GotResponse;
        
        /// <summary>
        /// Holds submissions that are pending a response from pool
        /// </summary>
        public static Hashtable PendingAcKs { get; } = new Hashtable();
        /// <summary>
        /// Current command iterationdfs
        /// </summary>
        public int Id;

        private TcpClient _tcpClient;
        private string _page = "";
        private readonly string _server;
        private readonly int _port;
        private readonly string _username;
        private readonly string _password;

        /// <summary>
        /// True iff connected to pool
        /// </summary>
        public bool Connected => _tcpClient.Connected;

        /// <summary>
        /// Initialize a new StratumTcp with given connection information
        /// </summary>
        public StratumTcp(string server, int port, string user, string pass)
        {
            _server = server;
            _port = port;
            _username = user;
            _password = pass;
        }

        public async Task ConnectToServer()
        {
            Id = 1;

            _tcpClient?.Dispose();

            _tcpClient = new TcpClient(AddressFamily.InterNetwork);

            await _tcpClient.ConnectAsync(_server, _port);

            if (_tcpClient.Connected)
                Console.WriteLine("Connected");
            else
            {
                throw new Exception("Unable to connect to server");
            }

            // We are connected successfully
            try
            {
                await SendSubscribe();
                await SendAuthorize();

                var networkStream = _tcpClient.GetStream();
                var buffer = new byte[_tcpClient.ReceiveBufferSize];

                // Now we are connected start async read operation.
                networkStream.BeginRead(buffer, 0, buffer.Length, ReadCallback, buffer);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Socket error:" + ex.Message);
            }
        }

        /// <summary>
        /// Tell the server we want to subscribe to job notifications
        /// </summary>
        public async Task SendSubscribe()
        {
            var command = new StratumCommand { Id = Id++, Method = "mining.subscribe", Parameters = new ArrayList() };


            var request = Utilities.JsonSerialize(command) + "\n";

            var bytesSent = Encoding.ASCII.GetBytes(request);

            try
            {
                _tcpClient.GetStream().Write(bytesSent, 0, bytesSent.Length);
                PendingAcKs.Add(command.Id, command.Method);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Socket error:" + ex.Message);
                await ConnectToServer();
            }

            Console.WriteLine("Sent mining.subscribe");
        }

        /// <summary>
        /// Send our credentials to the server to log-on and so it knows where to send payments
        /// </summary>
        public async Task SendAuthorize()
        {
            var command = new StratumCommand
            {
                Id = Id++, Method = "mining.authorize", Parameters = new ArrayList { _username, _password }
            };


            var request = Utilities.JsonSerialize(command) + "\n";

            var bytesSent = Encoding.ASCII.GetBytes(request);

            try
            {
                _tcpClient.GetStream().Write(bytesSent, 0, bytesSent.Length);
                PendingAcKs.Add(command.Id, command.Method);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Socket error:" + ex.Message);
                await ConnectToServer();
            }

            Console.WriteLine("Sent mining.authorize");
        }

        /// <summary>
        /// Submit a completed share that has a properly determined nonce and is below target.
        /// </summary>
        public async Task SendSubmit(string jobId, string nTime, string nonce, int difficulty, ulong extraNonce2)
        {
            var command = new StratumCommand
            {
                Id = Id++,
                Method = "mining.submit",
                Parameters = new ArrayList
                {
                    _username,
                    jobId,
                    extraNonce2.ToString("x16"),
                    nTime,
                    nonce
                }
            };

            var submitString = Utilities.JsonSerialize(command) + "\n";

            var bytesSent = Encoding.ASCII.GetBytes(submitString);

            try
            {
                await _tcpClient.GetStream().WriteAsync(bytesSent, 0, bytesSent.Length);
                PendingAcKs.Add(command.Id, command.Method);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Socket error:" + ex.Message);
                await ConnectToServer();
            }

            Console.WriteLine("{0} - Submit (Difficulty {1})", DateTime.Now, difficulty);
            Debug.WriteLine("[{0}] Submit (Difficulty {1}) : {2}", DateTime.Now, difficulty, submitString);
        }

        // Callback for Read operation
        private async void ReadCallback(IAsyncResult result)
        {
            NetworkStream networkStream;
            int bytesread;

            var buffer = result.AsyncState as byte[];

            try
            {
                networkStream = _tcpClient.GetStream();
                bytesread = networkStream.EndRead(result);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Socket error:" + ex.Message);
                return;
            }

            if (bytesread == 0)
            {
                Console.WriteLine(DateTime.Now + " Disconnected. Reconnecting...");
                Debug.WriteLine(DateTime.Now + " Disconnected. Reconnecting...");
                _tcpClient.Close();
                _tcpClient = null;
                PendingAcKs.Clear();
                await ConnectToServer();
                return;
            }

            // Get the data
            var data = Encoding.ASCII.GetString(buffer, 0, bytesread);
            Debug.WriteLine(data);

            _page += data;

            var foundClose = _page.IndexOf('}');

            while (foundClose > 0)
            {
                var currentString = _page.Substring(0, foundClose + 1);

                // We can get either a command or response from the server. Try to deserialise both
                var command = Utilities.JsonDeserialize<StratumCommand>(currentString);
                var response = Utilities.JsonDeserialize<StratumResponse>(currentString);

                if (command.Method != null)             // We got a command
                {
                    Debug.WriteLine(DateTime.Now + " Got Command: " + currentString);

                    var e = new StratumCommandEventArgs(command);

                    switch (command.Method)
                    {
                        case "mining.notify":
                            GotNotify?.Invoke(this, e);
                            break;
                        case "mining.set_difficulty":
                            GotSetDifficulty?.Invoke(this, e);
                            break;
                    }
                }
                else if (response.Error != null || response.Result != null)       // We got a response
                {
                    Debug.WriteLine(DateTime.Now + " Got Response: " + currentString);

                    var e = new StratumResponseEventArgs(response);

                    // Find the command that this is the response to and remove it from the list of commands that we're waiting on a response to
                    var cmd = (string)PendingAcKs[response.Id];
                    PendingAcKs.Remove(response.Id);

                    if (cmd == null)
                        Console.WriteLine("Unexpected Response");
                    else
                    {
                        GotResponse?.Invoke(cmd, e);
                    }
                }

                _page = _page.Remove(0, foundClose + 2);
                foundClose = _page.IndexOf('}');
            }

            // Then start reading from the network again.
            networkStream.BeginRead(buffer, 0, buffer.Length, ReadCallback, buffer);
        }

        public void Dispose()
        {
            _tcpClient?.Dispose();
        }
    }

    [DataContract]
    public class StratumCommand
    {
        [DataMember(Name = "method")]
        public string Method;
        [DataMember(Name = "id")]
        public int? Id;
        [DataMember(Name = "params")]
        public ArrayList Parameters;
    }

    [DataContract]
    public class StratumResponse
    {
        [DataMember]
        public ArrayList Error;
        [DataMember]
        public int? Id;
        [DataMember]
        public object Result;
    }

    public class StratumCommandEventArgs : EventArgs
    {
        public StratumCommand Command { get; }

        public StratumCommandEventArgs(StratumCommand command)
        {
            Command = command;
        }
    }

    public class StratumResponseEventArgs : EventArgs
    {
        public StratumResponse Response { get; }

        public StratumResponseEventArgs(StratumResponse response)
        {
            Response = response;
        }
    }
}