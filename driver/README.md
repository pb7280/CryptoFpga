## CryptoFpga low-level driver

Initially, this driver was planned to be bigger. However, its final responsibilities is only to expose low-level memory access in a way that can be consumed by the higher language of the client. 

The four functions exposed are:

* `open_map` - Opens a memory map at the specified base address. Returns a `map` struct which must be used for subsequent calls.
* `read_int` - Reads a 4-byte integer from the specified offset.
* `write_int` - Writes a 4-byte integer to the specified offset.
* `close_map` - Release the memory map.

Additional functionality remains, and can be used as a low-level test for PL communication. For this, the driver can be compiled as an executable with GCC: `gcc sha256.c -o sha256` then run with `sudo ./sha256`. 

To compile as a driver, run `gcc -shared -o libsha256.so -fPIC sha256.c` and copy to the executable folder.