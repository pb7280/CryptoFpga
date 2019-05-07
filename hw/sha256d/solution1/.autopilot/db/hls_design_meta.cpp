#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_AWADDR", 9, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_ARADDR", 9, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "scanhash_sha256d";
