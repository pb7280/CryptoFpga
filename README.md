# CryptoFpga

CryptoFpga is a full self-contained cryptocurrency mining system designed for Xilinx Zynq processing systems. It consists of three main components:

* Mining core written in C++ and targeting Vivado HLS. 
* Embedded Ubuntu installation that runs on ARM32 and provides low-level driver support for software to communicate with the mining core.
* Client software running in Ubuntu, managing high-level tasks.

## Folder structure

* `client` - Contains source code for client software
* `driver` - Source for low-level driver
* `hw` - Hardware sources:
  * `sha256d` - Mining HLS core.
  * `embedded_design` - Vivado project integrating peta-linux and the mining core.

Further details of strcture for each component is contained in these folders.