This folder is split into two directories:

* `embedded_design` contains the Vivado 2018.3 project needed for peta-linux compilation.
* `sha256d` contains the HLS source for the mining core.

The goal is to generate and export bitstream. This can be done with the following steps:

1. Open the HLS project in Vivado HLS
2. Synthesize HLS 
3. Export RTL local to project
4. Open the `embedded_design` project in Vivado
5. Make sure the reference to the HLS IP is correct. If not, add the HLS IP repository and instantiate it, connecting its AXI lite CTRL_BUS to the existing interconnect.
6. Synthesize/implement the project and generate bitstream
7. Export hardware including bitstream
8. Copy the resulting `embedded_design.sdk` folder to the host that will run peta-linux

Instructions for running peta-linux can be found [here](https://medium.com/developments-and-implementations-on-zynq-7000-ap/install-ubuntu-16-04-lts-on-zynq-zc702-using-petalinux-2016-4-e1da902eaff7). Step 3 can be skipped, since we just did that above. When choosing which distribution to use for the root file system, it must be Ubuntu 16 or higher. 

For convenience, the results from all of the above are included in `linux_boot.zip`. Follow the linked tutorial to setup the SD card and root file system, but instead of running Vivado or peta-linux the zip can be copied to the boot partition instead. Modification to the HLS core will require proper tooling setup.