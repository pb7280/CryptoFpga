## CryptoFpga Client Software

The client software runs under Ubuntu on the embedded ARM32 co-processor. It communicates directly with the HLS core through the driver and is responsible for scheduling and commanding it. It manages a connection to a pool through the STRATUM protocol, fetching and submitting work. 

### Setup

The client software is written in C# and targets .NET Core 2.1 and .NET Standard 2.0. .NET Standard is a way to make libraries that can be consumed by a program targeting any .NET runtime like .NET Core, but is not a runtime itself so cannot produce executables. .NET Core gives access to the runtime components .NET Standard projects depend on. All of the projects for the client software target .NET Standard except for the main `CryptoFpga` project, which produces an executable that can be run from command line and targets .NET Core 2.1. 

#### Running embedded

The only requirement to build the project is the .NET Core SDK, which can be downloaded [from Microsoft](https://dotnet.microsoft.com/download). There is no installer package for ARM32 Linux builds, but Microsoft provides binaries and installation instructions.

After installation, it is important that the main command `dotnet` be accessible in the `PATH` of both the user and `root`, since the client must be run with `sudo` to properly map to memory. 

For hardware access, the low-level C driver must be copied to the binary directory. THe instructions in the driver folder should produce a `libsha256.so` file, which the client will look for. The proper directory to copy this too will be `CryptoFpga.Algorithms.Sha256d.Tests/bin/Debug/netcoreapp2.1/` for unit tests and `CryptoFpga/bin/Debug/netcoreapp2.1/` for final running (these directories will be created on first builds).

Tests can be run with the command `sudo dotnet test` from either this directory or the root directory. No build commands are required; the SDK will build everything and copy to a test directory. The default unit tests will test both pool connection logic and attempt to run hashes on hardware. 

To run the client, use the command `sudo dotnet run --project CryptoFpga`. This can be used in this directory or the root directory, however from the root directory the project must be set to `client/CryptoFpga` instead. With no command parameters, the client will connect to a default pool and start running on hardware. Commands can be passed by entering them after a `--` delimiter, e.g. `sudo dotnet run --project CryptoFpga -- --help` will display the available parameters. 

Since building can take a long time on ARM, the above commands can be used with the `--no-build` switch if a re-build is not necessary, greatly reducing startup time.

#### Running in development 

During development, the client can be run under any .NET runtime on any compatible system (Windows, Linux, macOS). The same commands as above can be used on any system, although running on hardware will obviously fail on a normal computer. When run in Windows, the client will automatically use a mock software driver. This can be forced with the `--use-software` switch. 

Development on Windows is trivial to get started if Visual Studio 2017 or 2019 is installed. Simply open `CryptoFpga.sln` in the root folder.

### Project structure

* `CryptoFpga` - Main executable, only project targeting .NET Core instead of .NET Standard. Contains a command line parser, and a single class `Miner` that puts together the classes exposed by other projects.
* `CryptoFpga.Algorithms` - Folder that holds all algorithm-specific code. Setup to run as a plugin system, where a new algorithm can be supported by adding a new project for it.
  * `CryptoFpga.Algorithms.Common` - Common logic needed by all algorithms, mainly models.
  * `CryptoFpga.Algorithms.Sha256d` - The only implemented plugin currently, enables support for SHA-256d (Bitcoin) in hardware and a mock software driver.
* `CryptoFpga.IO` - Folder containing I/O related projects.
  * `CryptoFpga.IO.Memory` - Implements a single class, `MemMap`, that serves as a wrapper for the low-level C driver. This is the only project that references `libsha256.so` and is thus the reason the library needs to be in the executable folder.
  * `CryptoFpga.IO.Stratum` - Handles all functionality for connecting to a pool over a STRATUM connection. Has no external dependencies; required abstractions like a TCP client are provided by the runtime.
* `Tests` - Folder containing unit test projects. Unit tests are organized the same as the projects they test, they are named as `<project-to-test>.Tests`. 

### C# concepts 

Some intermediate C# concepts are uesd that the average reader may not be familiar with. These are described at length in the documentation on Microsoft's website, but a quick summary of those used is provided here.

#### Dispose pattern

C# runs in a managed, garbage-collected runtime. For the most part, resources do not need to be freed explicity. However, when working with unmanaged resources that the garbage collector has no way of knowing about, the dispose pattern is generally used. Classes that hold onto unmanaged resources implement the `IDisposable` interface, which specifices a `Dispose()` function to release these resources.

In practice, this is used mostly in 2 ways:

1. If the consumer of the class holds onto it at length, the class itself is marked as `IDisposable` and calls the `Dispose()` method in its own `Dispose()` method.
2. For short-term usages, instantiations are done with a `using` block, and at the end of the block the runtime will automatically call `Dispose()`. 

Besides runtime-provided classes that implement `IDisposable` like `TcpClient`, CryptoFpga uses the interface for the `MemMap` class which must close its memory map.

#### Async/Await

Async/Await pattern is used to prevent blocking of the main thread during long-running tasks. The runtime provides async methods for most I/O operations. It is mostly useful as a very shorthand way of instantiating a worker thread to run the task and wait on the result. CryptoFpga uses this for I/O operations and for the actual hashing core loop.

#### LINQ

LINQ is a toolbox library for operations on enumerable objects like `List`s or arrays. Any object that logically is a collection that can be enumerated over can implement the `IEnumerable<T>` interface (where `T` is the type of objects in the collection). LINQ methods operate on these objects and return either a result or transform them into a new `IEnumerable<T>`. 

The benefit of LINQ is deferred execution. Transformations can be stringed together and not executed until the result is actually iterated over. In this sense the resulting `IEnumerable<T>` simply stores the instructions to transform the original collection.

The downside is a returned `IEnumerable<T>` likely has a greatly reduced feature set compared to the original collection. E.g., an `IEnumerable<T>` cannot be accessed by index in O(1) time like an array can. Simple conversions to arrays or lists exist, but require enumerating over the whole collection. 

This type of programming is used extensively throughout the project. It is not too hard to glean the intent of LINQ calls, rather its difficulty curve is sharper when it comes to optimizations. 