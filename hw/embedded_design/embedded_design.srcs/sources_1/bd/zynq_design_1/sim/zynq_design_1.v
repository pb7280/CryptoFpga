//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri Apr 26 15:28:53 2019
//Host        : Dillons-PC running 64-bit major release  (build 9200)
//Command     : generate_target zynq_design_1.bd
//Design      : zynq_design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_NWAYHE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1KYXPZA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_1G30E7V
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_93CILR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_KI7GJ1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  zynq_design_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_T90PQ3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s00_couplers_ARADDR;
  wire [1:0]auto_cc_to_s00_couplers_ARBURST;
  wire [3:0]auto_cc_to_s00_couplers_ARCACHE;
  wire [7:0]auto_cc_to_s00_couplers_ARLEN;
  wire [0:0]auto_cc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [3:0]auto_cc_to_s00_couplers_ARQOS;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire [2:0]auto_cc_to_s00_couplers_ARSIZE;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [31:0]auto_cc_to_s00_couplers_AWADDR;
  wire [1:0]auto_cc_to_s00_couplers_AWBURST;
  wire [3:0]auto_cc_to_s00_couplers_AWCACHE;
  wire [7:0]auto_cc_to_s00_couplers_AWLEN;
  wire [0:0]auto_cc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [3:0]auto_cc_to_s00_couplers_AWQOS;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire [2:0]auto_cc_to_s00_couplers_AWSIZE;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [255:0]auto_cc_to_s00_couplers_RDATA;
  wire auto_cc_to_s00_couplers_RLAST;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [255:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WLAST;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [31:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [31:0]auto_pc_to_auto_us_ARADDR;
  wire [1:0]auto_pc_to_auto_us_ARBURST;
  wire [3:0]auto_pc_to_auto_us_ARCACHE;
  wire [11:0]auto_pc_to_auto_us_ARID;
  wire [7:0]auto_pc_to_auto_us_ARLEN;
  wire [0:0]auto_pc_to_auto_us_ARLOCK;
  wire [2:0]auto_pc_to_auto_us_ARPROT;
  wire [3:0]auto_pc_to_auto_us_ARQOS;
  wire auto_pc_to_auto_us_ARREADY;
  wire [3:0]auto_pc_to_auto_us_ARREGION;
  wire [2:0]auto_pc_to_auto_us_ARSIZE;
  wire auto_pc_to_auto_us_ARVALID;
  wire [31:0]auto_pc_to_auto_us_AWADDR;
  wire [1:0]auto_pc_to_auto_us_AWBURST;
  wire [3:0]auto_pc_to_auto_us_AWCACHE;
  wire [11:0]auto_pc_to_auto_us_AWID;
  wire [7:0]auto_pc_to_auto_us_AWLEN;
  wire [0:0]auto_pc_to_auto_us_AWLOCK;
  wire [2:0]auto_pc_to_auto_us_AWPROT;
  wire [3:0]auto_pc_to_auto_us_AWQOS;
  wire auto_pc_to_auto_us_AWREADY;
  wire [3:0]auto_pc_to_auto_us_AWREGION;
  wire [2:0]auto_pc_to_auto_us_AWSIZE;
  wire auto_pc_to_auto_us_AWVALID;
  wire [11:0]auto_pc_to_auto_us_BID;
  wire auto_pc_to_auto_us_BREADY;
  wire [1:0]auto_pc_to_auto_us_BRESP;
  wire auto_pc_to_auto_us_BVALID;
  wire [31:0]auto_pc_to_auto_us_RDATA;
  wire [11:0]auto_pc_to_auto_us_RID;
  wire auto_pc_to_auto_us_RLAST;
  wire auto_pc_to_auto_us_RREADY;
  wire [1:0]auto_pc_to_auto_us_RRESP;
  wire auto_pc_to_auto_us_RVALID;
  wire [31:0]auto_pc_to_auto_us_WDATA;
  wire auto_pc_to_auto_us_WLAST;
  wire auto_pc_to_auto_us_WREADY;
  wire [3:0]auto_pc_to_auto_us_WSTRB;
  wire auto_pc_to_auto_us_WVALID;
  wire [31:0]auto_us_to_auto_cc_ARADDR;
  wire [1:0]auto_us_to_auto_cc_ARBURST;
  wire [3:0]auto_us_to_auto_cc_ARCACHE;
  wire [7:0]auto_us_to_auto_cc_ARLEN;
  wire [0:0]auto_us_to_auto_cc_ARLOCK;
  wire [2:0]auto_us_to_auto_cc_ARPROT;
  wire [3:0]auto_us_to_auto_cc_ARQOS;
  wire auto_us_to_auto_cc_ARREADY;
  wire [3:0]auto_us_to_auto_cc_ARREGION;
  wire [2:0]auto_us_to_auto_cc_ARSIZE;
  wire auto_us_to_auto_cc_ARVALID;
  wire [31:0]auto_us_to_auto_cc_AWADDR;
  wire [1:0]auto_us_to_auto_cc_AWBURST;
  wire [3:0]auto_us_to_auto_cc_AWCACHE;
  wire [7:0]auto_us_to_auto_cc_AWLEN;
  wire [0:0]auto_us_to_auto_cc_AWLOCK;
  wire [2:0]auto_us_to_auto_cc_AWPROT;
  wire [3:0]auto_us_to_auto_cc_AWQOS;
  wire auto_us_to_auto_cc_AWREADY;
  wire [3:0]auto_us_to_auto_cc_AWREGION;
  wire [2:0]auto_us_to_auto_cc_AWSIZE;
  wire auto_us_to_auto_cc_AWVALID;
  wire auto_us_to_auto_cc_BREADY;
  wire [1:0]auto_us_to_auto_cc_BRESP;
  wire auto_us_to_auto_cc_BVALID;
  wire [255:0]auto_us_to_auto_cc_RDATA;
  wire auto_us_to_auto_cc_RLAST;
  wire auto_us_to_auto_cc_RREADY;
  wire [1:0]auto_us_to_auto_cc_RRESP;
  wire auto_us_to_auto_cc_RVALID;
  wire [255:0]auto_us_to_auto_cc_WDATA;
  wire auto_us_to_auto_cc_WLAST;
  wire auto_us_to_auto_cc_WREADY;
  wire [31:0]auto_us_to_auto_cc_WSTRB;
  wire auto_us_to_auto_cc_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_cc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = auto_cc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_cc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = auto_cc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[255:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_cc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  zynq_design_1_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_cc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_cc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_us_to_auto_cc_ARADDR),
        .s_axi_arburst(auto_us_to_auto_cc_ARBURST),
        .s_axi_arcache(auto_us_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(auto_us_to_auto_cc_ARLEN),
        .s_axi_arlock(auto_us_to_auto_cc_ARLOCK),
        .s_axi_arprot(auto_us_to_auto_cc_ARPROT),
        .s_axi_arqos(auto_us_to_auto_cc_ARQOS),
        .s_axi_arready(auto_us_to_auto_cc_ARREADY),
        .s_axi_arregion(auto_us_to_auto_cc_ARREGION),
        .s_axi_arsize(auto_us_to_auto_cc_ARSIZE),
        .s_axi_arvalid(auto_us_to_auto_cc_ARVALID),
        .s_axi_awaddr(auto_us_to_auto_cc_AWADDR),
        .s_axi_awburst(auto_us_to_auto_cc_AWBURST),
        .s_axi_awcache(auto_us_to_auto_cc_AWCACHE),
        .s_axi_awlen(auto_us_to_auto_cc_AWLEN),
        .s_axi_awlock(auto_us_to_auto_cc_AWLOCK),
        .s_axi_awprot(auto_us_to_auto_cc_AWPROT),
        .s_axi_awqos(auto_us_to_auto_cc_AWQOS),
        .s_axi_awready(auto_us_to_auto_cc_AWREADY),
        .s_axi_awregion(auto_us_to_auto_cc_AWREGION),
        .s_axi_awsize(auto_us_to_auto_cc_AWSIZE),
        .s_axi_awvalid(auto_us_to_auto_cc_AWVALID),
        .s_axi_bready(auto_us_to_auto_cc_BREADY),
        .s_axi_bresp(auto_us_to_auto_cc_BRESP),
        .s_axi_bvalid(auto_us_to_auto_cc_BVALID),
        .s_axi_rdata(auto_us_to_auto_cc_RDATA),
        .s_axi_rlast(auto_us_to_auto_cc_RLAST),
        .s_axi_rready(auto_us_to_auto_cc_RREADY),
        .s_axi_rresp(auto_us_to_auto_cc_RRESP),
        .s_axi_rvalid(auto_us_to_auto_cc_RVALID),
        .s_axi_wdata(auto_us_to_auto_cc_WDATA),
        .s_axi_wlast(auto_us_to_auto_cc_WLAST),
        .s_axi_wready(auto_us_to_auto_cc_WREADY),
        .s_axi_wstrb(auto_us_to_auto_cc_WSTRB),
        .s_axi_wvalid(auto_us_to_auto_cc_WVALID));
  zynq_design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_auto_us_ARADDR),
        .m_axi_arburst(auto_pc_to_auto_us_ARBURST),
        .m_axi_arcache(auto_pc_to_auto_us_ARCACHE),
        .m_axi_arid(auto_pc_to_auto_us_ARID),
        .m_axi_arlen(auto_pc_to_auto_us_ARLEN),
        .m_axi_arlock(auto_pc_to_auto_us_ARLOCK),
        .m_axi_arprot(auto_pc_to_auto_us_ARPROT),
        .m_axi_arqos(auto_pc_to_auto_us_ARQOS),
        .m_axi_arready(auto_pc_to_auto_us_ARREADY),
        .m_axi_arregion(auto_pc_to_auto_us_ARREGION),
        .m_axi_arsize(auto_pc_to_auto_us_ARSIZE),
        .m_axi_arvalid(auto_pc_to_auto_us_ARVALID),
        .m_axi_awaddr(auto_pc_to_auto_us_AWADDR),
        .m_axi_awburst(auto_pc_to_auto_us_AWBURST),
        .m_axi_awcache(auto_pc_to_auto_us_AWCACHE),
        .m_axi_awid(auto_pc_to_auto_us_AWID),
        .m_axi_awlen(auto_pc_to_auto_us_AWLEN),
        .m_axi_awlock(auto_pc_to_auto_us_AWLOCK),
        .m_axi_awprot(auto_pc_to_auto_us_AWPROT),
        .m_axi_awqos(auto_pc_to_auto_us_AWQOS),
        .m_axi_awready(auto_pc_to_auto_us_AWREADY),
        .m_axi_awregion(auto_pc_to_auto_us_AWREGION),
        .m_axi_awsize(auto_pc_to_auto_us_AWSIZE),
        .m_axi_awvalid(auto_pc_to_auto_us_AWVALID),
        .m_axi_bid(auto_pc_to_auto_us_BID),
        .m_axi_bready(auto_pc_to_auto_us_BREADY),
        .m_axi_bresp(auto_pc_to_auto_us_BRESP),
        .m_axi_bvalid(auto_pc_to_auto_us_BVALID),
        .m_axi_rdata(auto_pc_to_auto_us_RDATA),
        .m_axi_rid(auto_pc_to_auto_us_RID),
        .m_axi_rlast(auto_pc_to_auto_us_RLAST),
        .m_axi_rready(auto_pc_to_auto_us_RREADY),
        .m_axi_rresp(auto_pc_to_auto_us_RRESP),
        .m_axi_rvalid(auto_pc_to_auto_us_RVALID),
        .m_axi_wdata(auto_pc_to_auto_us_WDATA),
        .m_axi_wlast(auto_pc_to_auto_us_WLAST),
        .m_axi_wready(auto_pc_to_auto_us_WREADY),
        .m_axi_wstrb(auto_pc_to_auto_us_WSTRB),
        .m_axi_wvalid(auto_pc_to_auto_us_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
  zynq_design_1_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_auto_cc_ARADDR),
        .m_axi_arburst(auto_us_to_auto_cc_ARBURST),
        .m_axi_arcache(auto_us_to_auto_cc_ARCACHE),
        .m_axi_arlen(auto_us_to_auto_cc_ARLEN),
        .m_axi_arlock(auto_us_to_auto_cc_ARLOCK),
        .m_axi_arprot(auto_us_to_auto_cc_ARPROT),
        .m_axi_arqos(auto_us_to_auto_cc_ARQOS),
        .m_axi_arready(auto_us_to_auto_cc_ARREADY),
        .m_axi_arregion(auto_us_to_auto_cc_ARREGION),
        .m_axi_arsize(auto_us_to_auto_cc_ARSIZE),
        .m_axi_arvalid(auto_us_to_auto_cc_ARVALID),
        .m_axi_awaddr(auto_us_to_auto_cc_AWADDR),
        .m_axi_awburst(auto_us_to_auto_cc_AWBURST),
        .m_axi_awcache(auto_us_to_auto_cc_AWCACHE),
        .m_axi_awlen(auto_us_to_auto_cc_AWLEN),
        .m_axi_awlock(auto_us_to_auto_cc_AWLOCK),
        .m_axi_awprot(auto_us_to_auto_cc_AWPROT),
        .m_axi_awqos(auto_us_to_auto_cc_AWQOS),
        .m_axi_awready(auto_us_to_auto_cc_AWREADY),
        .m_axi_awregion(auto_us_to_auto_cc_AWREGION),
        .m_axi_awsize(auto_us_to_auto_cc_AWSIZE),
        .m_axi_awvalid(auto_us_to_auto_cc_AWVALID),
        .m_axi_bready(auto_us_to_auto_cc_BREADY),
        .m_axi_bresp(auto_us_to_auto_cc_BRESP),
        .m_axi_bvalid(auto_us_to_auto_cc_BVALID),
        .m_axi_rdata(auto_us_to_auto_cc_RDATA),
        .m_axi_rlast(auto_us_to_auto_cc_RLAST),
        .m_axi_rready(auto_us_to_auto_cc_RREADY),
        .m_axi_rresp(auto_us_to_auto_cc_RRESP),
        .m_axi_rvalid(auto_us_to_auto_cc_RVALID),
        .m_axi_wdata(auto_us_to_auto_cc_WDATA),
        .m_axi_wlast(auto_us_to_auto_cc_WLAST),
        .m_axi_wready(auto_us_to_auto_cc_WREADY),
        .m_axi_wstrb(auto_us_to_auto_cc_WSTRB),
        .m_axi_wvalid(auto_us_to_auto_cc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_pc_to_auto_us_ARADDR),
        .s_axi_arburst(auto_pc_to_auto_us_ARBURST),
        .s_axi_arcache(auto_pc_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(auto_pc_to_auto_us_ARID),
        .s_axi_arlen(auto_pc_to_auto_us_ARLEN),
        .s_axi_arlock(auto_pc_to_auto_us_ARLOCK),
        .s_axi_arprot(auto_pc_to_auto_us_ARPROT),
        .s_axi_arqos(auto_pc_to_auto_us_ARQOS),
        .s_axi_arready(auto_pc_to_auto_us_ARREADY),
        .s_axi_arregion(auto_pc_to_auto_us_ARREGION),
        .s_axi_arsize(auto_pc_to_auto_us_ARSIZE),
        .s_axi_arvalid(auto_pc_to_auto_us_ARVALID),
        .s_axi_awaddr(auto_pc_to_auto_us_AWADDR),
        .s_axi_awburst(auto_pc_to_auto_us_AWBURST),
        .s_axi_awcache(auto_pc_to_auto_us_AWCACHE),
        .s_axi_awid(auto_pc_to_auto_us_AWID),
        .s_axi_awlen(auto_pc_to_auto_us_AWLEN),
        .s_axi_awlock(auto_pc_to_auto_us_AWLOCK),
        .s_axi_awprot(auto_pc_to_auto_us_AWPROT),
        .s_axi_awqos(auto_pc_to_auto_us_AWQOS),
        .s_axi_awready(auto_pc_to_auto_us_AWREADY),
        .s_axi_awregion(auto_pc_to_auto_us_AWREGION),
        .s_axi_awsize(auto_pc_to_auto_us_AWSIZE),
        .s_axi_awvalid(auto_pc_to_auto_us_AWVALID),
        .s_axi_bid(auto_pc_to_auto_us_BID),
        .s_axi_bready(auto_pc_to_auto_us_BREADY),
        .s_axi_bresp(auto_pc_to_auto_us_BRESP),
        .s_axi_bvalid(auto_pc_to_auto_us_BVALID),
        .s_axi_rdata(auto_pc_to_auto_us_RDATA),
        .s_axi_rid(auto_pc_to_auto_us_RID),
        .s_axi_rlast(auto_pc_to_auto_us_RLAST),
        .s_axi_rready(auto_pc_to_auto_us_RREADY),
        .s_axi_rresp(auto_pc_to_auto_us_RRESP),
        .s_axi_rvalid(auto_pc_to_auto_us_RVALID),
        .s_axi_wdata(auto_pc_to_auto_us_WDATA),
        .s_axi_wlast(auto_pc_to_auto_us_WLAST),
        .s_axi_wready(auto_pc_to_auto_us_WREADY),
        .s_axi_wstrb(auto_pc_to_auto_us_WSTRB),
        .s_axi_wvalid(auto_pc_to_auto_us_WVALID));
endmodule

(* CORE_GENERATION_INFO = "zynq_design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zynq_design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=22,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=8,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=13,da_clkrst_cnt=4,synth_mode=Global}" *) (* HW_HANDOFF = "zynq_design_1.hwdef" *) 
module zynq_design_1
   (DDR3_addr,
    DDR3_ba,
    DDR3_cas_n,
    DDR3_ck_n,
    DDR3_ck_p,
    DDR3_cke,
    DDR3_cs_n,
    DDR3_dm,
    DDR3_dq,
    DDR3_dqs_n,
    DDR3_dqs_p,
    DDR3_odt,
    DDR3_ras_n,
    DDR3_reset_n,
    DDR3_we_n,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    DIP_Switches_8Bits_tri_i,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    LEDs_8Bits_tri_o,
    Push_Switches_3Bits_tri_i,
    sys_clk_n,
    sys_clk_p,
    sys_rst);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR3, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [14:0]DDR3_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 BA" *) output [2:0]DDR3_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CAS_N" *) output DDR3_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CK_N" *) output [0:0]DDR3_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CK_P" *) output [0:0]DDR3_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CKE" *) output [0:0]DDR3_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CS_N" *) output [0:0]DDR3_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DM" *) output [3:0]DDR3_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQ" *) inout [31:0]DDR3_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQS_N" *) inout [3:0]DDR3_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQS_P" *) inout [3:0]DDR3_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 ODT" *) output [0:0]DDR3_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 RAS_N" *) output DDR3_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 RESET_N" *) output DDR3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 WE_N" *) output DDR3_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 DIP_Switches_8Bits TRI_I" *) input [7:0]DIP_Switches_8Bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 LEDs_8Bits TRI_O" *) output [7:0]LEDs_8Bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 Push_Switches_3Bits TRI_I" *) input [2:0]Push_Switches_3Bits_tri_i;
  input sys_clk_n;
  input sys_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input sys_rst;

  wire [2:0]axi_gpio_1_gpio_TRI_I;
  wire [7:0]axi_gpio_2_gpio_TRI_I;
  wire [7:0]axi_gpio_3_gpio_TRI_O;
  wire [31:0]axi_mem_intercon_m00_axi_ARADDR;
  wire [1:0]axi_mem_intercon_m00_axi_ARBURST;
  wire [3:0]axi_mem_intercon_m00_axi_ARCACHE;
  wire [7:0]axi_mem_intercon_m00_axi_ARLEN;
  wire axi_mem_intercon_m00_axi_ARLOCK;
  wire [2:0]axi_mem_intercon_m00_axi_ARPROT;
  wire [3:0]axi_mem_intercon_m00_axi_ARQOS;
  wire axi_mem_intercon_m00_axi_ARREADY;
  wire [2:0]axi_mem_intercon_m00_axi_ARSIZE;
  wire axi_mem_intercon_m00_axi_ARVALID;
  wire [31:0]axi_mem_intercon_m00_axi_AWADDR;
  wire [1:0]axi_mem_intercon_m00_axi_AWBURST;
  wire [3:0]axi_mem_intercon_m00_axi_AWCACHE;
  wire [7:0]axi_mem_intercon_m00_axi_AWLEN;
  wire axi_mem_intercon_m00_axi_AWLOCK;
  wire [2:0]axi_mem_intercon_m00_axi_AWPROT;
  wire [3:0]axi_mem_intercon_m00_axi_AWQOS;
  wire axi_mem_intercon_m00_axi_AWREADY;
  wire [2:0]axi_mem_intercon_m00_axi_AWSIZE;
  wire axi_mem_intercon_m00_axi_AWVALID;
  wire axi_mem_intercon_m00_axi_BREADY;
  wire [1:0]axi_mem_intercon_m00_axi_BRESP;
  wire axi_mem_intercon_m00_axi_BVALID;
  wire [255:0]axi_mem_intercon_m00_axi_RDATA;
  wire axi_mem_intercon_m00_axi_RLAST;
  wire axi_mem_intercon_m00_axi_RREADY;
  wire [1:0]axi_mem_intercon_m00_axi_RRESP;
  wire axi_mem_intercon_m00_axi_RVALID;
  wire [255:0]axi_mem_intercon_m00_axi_WDATA;
  wire axi_mem_intercon_m00_axi_WLAST;
  wire axi_mem_intercon_m00_axi_WREADY;
  wire [31:0]axi_mem_intercon_m00_axi_WSTRB;
  wire axi_mem_intercon_m00_axi_WVALID;
  wire [14:0]mig_7series_1_ddr3_ADDR;
  wire [2:0]mig_7series_1_ddr3_BA;
  wire mig_7series_1_ddr3_CAS_N;
  wire [0:0]mig_7series_1_ddr3_CKE;
  wire [0:0]mig_7series_1_ddr3_CK_N;
  wire [0:0]mig_7series_1_ddr3_CK_P;
  wire [0:0]mig_7series_1_ddr3_CS_N;
  wire [3:0]mig_7series_1_ddr3_DM;
  wire [31:0]mig_7series_1_ddr3_DQ;
  wire [3:0]mig_7series_1_ddr3_DQS_N;
  wire [3:0]mig_7series_1_ddr3_DQS_P;
  wire [0:0]mig_7series_1_ddr3_ODT;
  wire mig_7series_1_ddr3_RAS_N;
  wire mig_7series_1_ddr3_RESET_N;
  wire mig_7series_1_ddr3_WE_N;
  wire mig_7series_1_ui_clk;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_interconnect_aresetn;
  wire [0:0]proc_sys_reset_peripheral_aresetn;
  wire [31:0]processing_system7_1_axi_periph_M03_AXI_ARADDR;
  wire processing_system7_1_axi_periph_M03_AXI_ARREADY;
  wire processing_system7_1_axi_periph_M03_AXI_ARVALID;
  wire [31:0]processing_system7_1_axi_periph_M03_AXI_AWADDR;
  wire processing_system7_1_axi_periph_M03_AXI_AWREADY;
  wire processing_system7_1_axi_periph_M03_AXI_AWVALID;
  wire processing_system7_1_axi_periph_M03_AXI_BREADY;
  wire [1:0]processing_system7_1_axi_periph_M03_AXI_BRESP;
  wire processing_system7_1_axi_periph_M03_AXI_BVALID;
  wire [31:0]processing_system7_1_axi_periph_M03_AXI_RDATA;
  wire processing_system7_1_axi_periph_M03_AXI_RREADY;
  wire [1:0]processing_system7_1_axi_periph_M03_AXI_RRESP;
  wire processing_system7_1_axi_periph_M03_AXI_RVALID;
  wire [31:0]processing_system7_1_axi_periph_M03_AXI_WDATA;
  wire processing_system7_1_axi_periph_M03_AXI_WREADY;
  wire [3:0]processing_system7_1_axi_periph_M03_AXI_WSTRB;
  wire processing_system7_1_axi_periph_M03_AXI_WVALID;
  wire [31:0]processing_system7_1_axi_periph_m00_axi_ARADDR;
  wire processing_system7_1_axi_periph_m00_axi_ARREADY;
  wire processing_system7_1_axi_periph_m00_axi_ARVALID;
  wire [31:0]processing_system7_1_axi_periph_m00_axi_AWADDR;
  wire processing_system7_1_axi_periph_m00_axi_AWREADY;
  wire processing_system7_1_axi_periph_m00_axi_AWVALID;
  wire processing_system7_1_axi_periph_m00_axi_BREADY;
  wire [1:0]processing_system7_1_axi_periph_m00_axi_BRESP;
  wire processing_system7_1_axi_periph_m00_axi_BVALID;
  wire [31:0]processing_system7_1_axi_periph_m00_axi_RDATA;
  wire processing_system7_1_axi_periph_m00_axi_RREADY;
  wire [1:0]processing_system7_1_axi_periph_m00_axi_RRESP;
  wire processing_system7_1_axi_periph_m00_axi_RVALID;
  wire [31:0]processing_system7_1_axi_periph_m00_axi_WDATA;
  wire processing_system7_1_axi_periph_m00_axi_WREADY;
  wire [3:0]processing_system7_1_axi_periph_m00_axi_WSTRB;
  wire processing_system7_1_axi_periph_m00_axi_WVALID;
  wire [31:0]processing_system7_1_axi_periph_m01_axi_ARADDR;
  wire processing_system7_1_axi_periph_m01_axi_ARREADY;
  wire processing_system7_1_axi_periph_m01_axi_ARVALID;
  wire [31:0]processing_system7_1_axi_periph_m01_axi_AWADDR;
  wire processing_system7_1_axi_periph_m01_axi_AWREADY;
  wire processing_system7_1_axi_periph_m01_axi_AWVALID;
  wire processing_system7_1_axi_periph_m01_axi_BREADY;
  wire [1:0]processing_system7_1_axi_periph_m01_axi_BRESP;
  wire processing_system7_1_axi_periph_m01_axi_BVALID;
  wire [31:0]processing_system7_1_axi_periph_m01_axi_RDATA;
  wire processing_system7_1_axi_periph_m01_axi_RREADY;
  wire [1:0]processing_system7_1_axi_periph_m01_axi_RRESP;
  wire processing_system7_1_axi_periph_m01_axi_RVALID;
  wire [31:0]processing_system7_1_axi_periph_m01_axi_WDATA;
  wire processing_system7_1_axi_periph_m01_axi_WREADY;
  wire [3:0]processing_system7_1_axi_periph_m01_axi_WSTRB;
  wire processing_system7_1_axi_periph_m01_axi_WVALID;
  wire [31:0]processing_system7_1_axi_periph_m02_axi_ARADDR;
  wire processing_system7_1_axi_periph_m02_axi_ARREADY;
  wire processing_system7_1_axi_periph_m02_axi_ARVALID;
  wire [31:0]processing_system7_1_axi_periph_m02_axi_AWADDR;
  wire processing_system7_1_axi_periph_m02_axi_AWREADY;
  wire processing_system7_1_axi_periph_m02_axi_AWVALID;
  wire processing_system7_1_axi_periph_m02_axi_BREADY;
  wire [1:0]processing_system7_1_axi_periph_m02_axi_BRESP;
  wire processing_system7_1_axi_periph_m02_axi_BVALID;
  wire [31:0]processing_system7_1_axi_periph_m02_axi_RDATA;
  wire processing_system7_1_axi_periph_m02_axi_RREADY;
  wire [1:0]processing_system7_1_axi_periph_m02_axi_RRESP;
  wire processing_system7_1_axi_periph_m02_axi_RVALID;
  wire [31:0]processing_system7_1_axi_periph_m02_axi_WDATA;
  wire processing_system7_1_axi_periph_m02_axi_WREADY;
  wire [3:0]processing_system7_1_axi_periph_m02_axi_WSTRB;
  wire processing_system7_1_axi_periph_m02_axi_WVALID;
  wire [14:0]processing_system7_1_ddr_ADDR;
  wire [2:0]processing_system7_1_ddr_BA;
  wire processing_system7_1_ddr_CAS_N;
  wire processing_system7_1_ddr_CKE;
  wire processing_system7_1_ddr_CK_N;
  wire processing_system7_1_ddr_CK_P;
  wire processing_system7_1_ddr_CS_N;
  wire [3:0]processing_system7_1_ddr_DM;
  wire [31:0]processing_system7_1_ddr_DQ;
  wire [3:0]processing_system7_1_ddr_DQS_N;
  wire [3:0]processing_system7_1_ddr_DQS_P;
  wire processing_system7_1_ddr_ODT;
  wire processing_system7_1_ddr_RAS_N;
  wire processing_system7_1_ddr_RESET_N;
  wire processing_system7_1_ddr_WE_N;
  wire processing_system7_1_fclk_clk0;
  wire processing_system7_1_fclk_reset0_n;
  wire processing_system7_1_fixed_io_DDR_VRN;
  wire processing_system7_1_fixed_io_DDR_VRP;
  wire [53:0]processing_system7_1_fixed_io_MIO;
  wire processing_system7_1_fixed_io_PS_CLK;
  wire processing_system7_1_fixed_io_PS_PORB;
  wire processing_system7_1_fixed_io_PS_SRSTB;
  wire [31:0]processing_system7_1_m_axi_gp0_ARADDR;
  wire [1:0]processing_system7_1_m_axi_gp0_ARBURST;
  wire [3:0]processing_system7_1_m_axi_gp0_ARCACHE;
  wire [11:0]processing_system7_1_m_axi_gp0_ARID;
  wire [3:0]processing_system7_1_m_axi_gp0_ARLEN;
  wire [1:0]processing_system7_1_m_axi_gp0_ARLOCK;
  wire [2:0]processing_system7_1_m_axi_gp0_ARPROT;
  wire [3:0]processing_system7_1_m_axi_gp0_ARQOS;
  wire processing_system7_1_m_axi_gp0_ARREADY;
  wire [2:0]processing_system7_1_m_axi_gp0_ARSIZE;
  wire processing_system7_1_m_axi_gp0_ARVALID;
  wire [31:0]processing_system7_1_m_axi_gp0_AWADDR;
  wire [1:0]processing_system7_1_m_axi_gp0_AWBURST;
  wire [3:0]processing_system7_1_m_axi_gp0_AWCACHE;
  wire [11:0]processing_system7_1_m_axi_gp0_AWID;
  wire [3:0]processing_system7_1_m_axi_gp0_AWLEN;
  wire [1:0]processing_system7_1_m_axi_gp0_AWLOCK;
  wire [2:0]processing_system7_1_m_axi_gp0_AWPROT;
  wire [3:0]processing_system7_1_m_axi_gp0_AWQOS;
  wire processing_system7_1_m_axi_gp0_AWREADY;
  wire [2:0]processing_system7_1_m_axi_gp0_AWSIZE;
  wire processing_system7_1_m_axi_gp0_AWVALID;
  wire [11:0]processing_system7_1_m_axi_gp0_BID;
  wire processing_system7_1_m_axi_gp0_BREADY;
  wire [1:0]processing_system7_1_m_axi_gp0_BRESP;
  wire processing_system7_1_m_axi_gp0_BVALID;
  wire [31:0]processing_system7_1_m_axi_gp0_RDATA;
  wire [11:0]processing_system7_1_m_axi_gp0_RID;
  wire processing_system7_1_m_axi_gp0_RLAST;
  wire processing_system7_1_m_axi_gp0_RREADY;
  wire [1:0]processing_system7_1_m_axi_gp0_RRESP;
  wire processing_system7_1_m_axi_gp0_RVALID;
  wire [31:0]processing_system7_1_m_axi_gp0_WDATA;
  wire [11:0]processing_system7_1_m_axi_gp0_WID;
  wire processing_system7_1_m_axi_gp0_WLAST;
  wire processing_system7_1_m_axi_gp0_WREADY;
  wire [3:0]processing_system7_1_m_axi_gp0_WSTRB;
  wire processing_system7_1_m_axi_gp0_WVALID;
  wire [31:0]processing_system7_1_m_axi_gp1_ARADDR;
  wire [1:0]processing_system7_1_m_axi_gp1_ARBURST;
  wire [3:0]processing_system7_1_m_axi_gp1_ARCACHE;
  wire [11:0]processing_system7_1_m_axi_gp1_ARID;
  wire [3:0]processing_system7_1_m_axi_gp1_ARLEN;
  wire [1:0]processing_system7_1_m_axi_gp1_ARLOCK;
  wire [2:0]processing_system7_1_m_axi_gp1_ARPROT;
  wire [3:0]processing_system7_1_m_axi_gp1_ARQOS;
  wire processing_system7_1_m_axi_gp1_ARREADY;
  wire [2:0]processing_system7_1_m_axi_gp1_ARSIZE;
  wire processing_system7_1_m_axi_gp1_ARVALID;
  wire [31:0]processing_system7_1_m_axi_gp1_AWADDR;
  wire [1:0]processing_system7_1_m_axi_gp1_AWBURST;
  wire [3:0]processing_system7_1_m_axi_gp1_AWCACHE;
  wire [11:0]processing_system7_1_m_axi_gp1_AWID;
  wire [3:0]processing_system7_1_m_axi_gp1_AWLEN;
  wire [1:0]processing_system7_1_m_axi_gp1_AWLOCK;
  wire [2:0]processing_system7_1_m_axi_gp1_AWPROT;
  wire [3:0]processing_system7_1_m_axi_gp1_AWQOS;
  wire processing_system7_1_m_axi_gp1_AWREADY;
  wire [2:0]processing_system7_1_m_axi_gp1_AWSIZE;
  wire processing_system7_1_m_axi_gp1_AWVALID;
  wire [11:0]processing_system7_1_m_axi_gp1_BID;
  wire processing_system7_1_m_axi_gp1_BREADY;
  wire [1:0]processing_system7_1_m_axi_gp1_BRESP;
  wire processing_system7_1_m_axi_gp1_BVALID;
  wire [31:0]processing_system7_1_m_axi_gp1_RDATA;
  wire [11:0]processing_system7_1_m_axi_gp1_RID;
  wire processing_system7_1_m_axi_gp1_RLAST;
  wire processing_system7_1_m_axi_gp1_RREADY;
  wire [1:0]processing_system7_1_m_axi_gp1_RRESP;
  wire processing_system7_1_m_axi_gp1_RVALID;
  wire [31:0]processing_system7_1_m_axi_gp1_WDATA;
  wire [11:0]processing_system7_1_m_axi_gp1_WID;
  wire processing_system7_1_m_axi_gp1_WLAST;
  wire processing_system7_1_m_axi_gp1_WREADY;
  wire [3:0]processing_system7_1_m_axi_gp1_WSTRB;
  wire processing_system7_1_m_axi_gp1_WVALID;
  wire sys_clk_n_1;
  wire sys_clk_p_1;
  wire sys_rst_1;
  wire [0:0]xlconstant_0_const;

  assign DDR3_addr[14:0] = mig_7series_1_ddr3_ADDR;
  assign DDR3_ba[2:0] = mig_7series_1_ddr3_BA;
  assign DDR3_cas_n = mig_7series_1_ddr3_CAS_N;
  assign DDR3_ck_n[0] = mig_7series_1_ddr3_CK_N;
  assign DDR3_ck_p[0] = mig_7series_1_ddr3_CK_P;
  assign DDR3_cke[0] = mig_7series_1_ddr3_CKE;
  assign DDR3_cs_n[0] = mig_7series_1_ddr3_CS_N;
  assign DDR3_dm[3:0] = mig_7series_1_ddr3_DM;
  assign DDR3_odt[0] = mig_7series_1_ddr3_ODT;
  assign DDR3_ras_n = mig_7series_1_ddr3_RAS_N;
  assign DDR3_reset_n = mig_7series_1_ddr3_RESET_N;
  assign DDR3_we_n = mig_7series_1_ddr3_WE_N;
  assign LEDs_8Bits_tri_o[7:0] = axi_gpio_3_gpio_TRI_O;
  assign axi_gpio_1_gpio_TRI_I = Push_Switches_3Bits_tri_i[2:0];
  assign axi_gpio_2_gpio_TRI_I = DIP_Switches_8Bits_tri_i[7:0];
  assign sys_clk_n_1 = sys_clk_n;
  assign sys_clk_p_1 = sys_clk_p;
  assign sys_rst_1 = sys_rst;
  zynq_design_1_axi_gpio_1_0 axi_gpio_1
       (.gpio_io_i(axi_gpio_1_gpio_TRI_I),
        .s_axi_aclk(processing_system7_1_fclk_clk0),
        .s_axi_araddr(processing_system7_1_axi_periph_m00_axi_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_peripheral_aresetn),
        .s_axi_arready(processing_system7_1_axi_periph_m00_axi_ARREADY),
        .s_axi_arvalid(processing_system7_1_axi_periph_m00_axi_ARVALID),
        .s_axi_awaddr(processing_system7_1_axi_periph_m00_axi_AWADDR[8:0]),
        .s_axi_awready(processing_system7_1_axi_periph_m00_axi_AWREADY),
        .s_axi_awvalid(processing_system7_1_axi_periph_m00_axi_AWVALID),
        .s_axi_bready(processing_system7_1_axi_periph_m00_axi_BREADY),
        .s_axi_bresp(processing_system7_1_axi_periph_m00_axi_BRESP),
        .s_axi_bvalid(processing_system7_1_axi_periph_m00_axi_BVALID),
        .s_axi_rdata(processing_system7_1_axi_periph_m00_axi_RDATA),
        .s_axi_rready(processing_system7_1_axi_periph_m00_axi_RREADY),
        .s_axi_rresp(processing_system7_1_axi_periph_m00_axi_RRESP),
        .s_axi_rvalid(processing_system7_1_axi_periph_m00_axi_RVALID),
        .s_axi_wdata(processing_system7_1_axi_periph_m00_axi_WDATA),
        .s_axi_wready(processing_system7_1_axi_periph_m00_axi_WREADY),
        .s_axi_wstrb(processing_system7_1_axi_periph_m00_axi_WSTRB),
        .s_axi_wvalid(processing_system7_1_axi_periph_m00_axi_WVALID));
  zynq_design_1_axi_gpio_2_1 axi_gpio_2
       (.gpio_io_i(axi_gpio_2_gpio_TRI_I),
        .s_axi_aclk(processing_system7_1_fclk_clk0),
        .s_axi_araddr(processing_system7_1_axi_periph_m01_axi_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_peripheral_aresetn),
        .s_axi_arready(processing_system7_1_axi_periph_m01_axi_ARREADY),
        .s_axi_arvalid(processing_system7_1_axi_periph_m01_axi_ARVALID),
        .s_axi_awaddr(processing_system7_1_axi_periph_m01_axi_AWADDR[8:0]),
        .s_axi_awready(processing_system7_1_axi_periph_m01_axi_AWREADY),
        .s_axi_awvalid(processing_system7_1_axi_periph_m01_axi_AWVALID),
        .s_axi_bready(processing_system7_1_axi_periph_m01_axi_BREADY),
        .s_axi_bresp(processing_system7_1_axi_periph_m01_axi_BRESP),
        .s_axi_bvalid(processing_system7_1_axi_periph_m01_axi_BVALID),
        .s_axi_rdata(processing_system7_1_axi_periph_m01_axi_RDATA),
        .s_axi_rready(processing_system7_1_axi_periph_m01_axi_RREADY),
        .s_axi_rresp(processing_system7_1_axi_periph_m01_axi_RRESP),
        .s_axi_rvalid(processing_system7_1_axi_periph_m01_axi_RVALID),
        .s_axi_wdata(processing_system7_1_axi_periph_m01_axi_WDATA),
        .s_axi_wready(processing_system7_1_axi_periph_m01_axi_WREADY),
        .s_axi_wstrb(processing_system7_1_axi_periph_m01_axi_WSTRB),
        .s_axi_wvalid(processing_system7_1_axi_periph_m01_axi_WVALID));
  zynq_design_1_axi_gpio_3_2 axi_gpio_3
       (.gpio_io_o(axi_gpio_3_gpio_TRI_O),
        .s_axi_aclk(processing_system7_1_fclk_clk0),
        .s_axi_araddr(processing_system7_1_axi_periph_m02_axi_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_peripheral_aresetn),
        .s_axi_arready(processing_system7_1_axi_periph_m02_axi_ARREADY),
        .s_axi_arvalid(processing_system7_1_axi_periph_m02_axi_ARVALID),
        .s_axi_awaddr(processing_system7_1_axi_periph_m02_axi_AWADDR[8:0]),
        .s_axi_awready(processing_system7_1_axi_periph_m02_axi_AWREADY),
        .s_axi_awvalid(processing_system7_1_axi_periph_m02_axi_AWVALID),
        .s_axi_bready(processing_system7_1_axi_periph_m02_axi_BREADY),
        .s_axi_bresp(processing_system7_1_axi_periph_m02_axi_BRESP),
        .s_axi_bvalid(processing_system7_1_axi_periph_m02_axi_BVALID),
        .s_axi_rdata(processing_system7_1_axi_periph_m02_axi_RDATA),
        .s_axi_rready(processing_system7_1_axi_periph_m02_axi_RREADY),
        .s_axi_rresp(processing_system7_1_axi_periph_m02_axi_RRESP),
        .s_axi_rvalid(processing_system7_1_axi_periph_m02_axi_RVALID),
        .s_axi_wdata(processing_system7_1_axi_periph_m02_axi_WDATA),
        .s_axi_wready(processing_system7_1_axi_periph_m02_axi_WREADY),
        .s_axi_wstrb(processing_system7_1_axi_periph_m02_axi_WSTRB),
        .s_axi_wvalid(processing_system7_1_axi_periph_m02_axi_WVALID));
  zynq_design_1_axi_mem_intercon_1 axi_mem_intercon
       (.ACLK(mig_7series_1_ui_clk),
        .ARESETN(proc_sys_reset_interconnect_aresetn),
        .M00_ACLK(mig_7series_1_ui_clk),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_m00_axi_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_m00_axi_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_m00_axi_ARCACHE),
        .M00_AXI_arlen(axi_mem_intercon_m00_axi_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_m00_axi_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_m00_axi_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_m00_axi_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_m00_axi_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_m00_axi_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_m00_axi_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_m00_axi_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_m00_axi_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_m00_axi_AWCACHE),
        .M00_AXI_awlen(axi_mem_intercon_m00_axi_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_m00_axi_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_m00_axi_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_m00_axi_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_m00_axi_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_m00_axi_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_m00_axi_AWVALID),
        .M00_AXI_bready(axi_mem_intercon_m00_axi_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_m00_axi_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_m00_axi_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_m00_axi_RDATA),
        .M00_AXI_rlast(axi_mem_intercon_m00_axi_RLAST),
        .M00_AXI_rready(axi_mem_intercon_m00_axi_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_m00_axi_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_m00_axi_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_m00_axi_WDATA),
        .M00_AXI_wlast(axi_mem_intercon_m00_axi_WLAST),
        .M00_AXI_wready(axi_mem_intercon_m00_axi_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_m00_axi_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_m00_axi_WVALID),
        .S00_ACLK(processing_system7_1_fclk_clk0),
        .S00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_1_m_axi_gp1_ARADDR),
        .S00_AXI_arburst(processing_system7_1_m_axi_gp1_ARBURST),
        .S00_AXI_arcache(processing_system7_1_m_axi_gp1_ARCACHE),
        .S00_AXI_arid(processing_system7_1_m_axi_gp1_ARID),
        .S00_AXI_arlen(processing_system7_1_m_axi_gp1_ARLEN),
        .S00_AXI_arlock(processing_system7_1_m_axi_gp1_ARLOCK),
        .S00_AXI_arprot(processing_system7_1_m_axi_gp1_ARPROT),
        .S00_AXI_arqos(processing_system7_1_m_axi_gp1_ARQOS),
        .S00_AXI_arready(processing_system7_1_m_axi_gp1_ARREADY),
        .S00_AXI_arsize(processing_system7_1_m_axi_gp1_ARSIZE),
        .S00_AXI_arvalid(processing_system7_1_m_axi_gp1_ARVALID),
        .S00_AXI_awaddr(processing_system7_1_m_axi_gp1_AWADDR),
        .S00_AXI_awburst(processing_system7_1_m_axi_gp1_AWBURST),
        .S00_AXI_awcache(processing_system7_1_m_axi_gp1_AWCACHE),
        .S00_AXI_awid(processing_system7_1_m_axi_gp1_AWID),
        .S00_AXI_awlen(processing_system7_1_m_axi_gp1_AWLEN),
        .S00_AXI_awlock(processing_system7_1_m_axi_gp1_AWLOCK),
        .S00_AXI_awprot(processing_system7_1_m_axi_gp1_AWPROT),
        .S00_AXI_awqos(processing_system7_1_m_axi_gp1_AWQOS),
        .S00_AXI_awready(processing_system7_1_m_axi_gp1_AWREADY),
        .S00_AXI_awsize(processing_system7_1_m_axi_gp1_AWSIZE),
        .S00_AXI_awvalid(processing_system7_1_m_axi_gp1_AWVALID),
        .S00_AXI_bid(processing_system7_1_m_axi_gp1_BID),
        .S00_AXI_bready(processing_system7_1_m_axi_gp1_BREADY),
        .S00_AXI_bresp(processing_system7_1_m_axi_gp1_BRESP),
        .S00_AXI_bvalid(processing_system7_1_m_axi_gp1_BVALID),
        .S00_AXI_rdata(processing_system7_1_m_axi_gp1_RDATA),
        .S00_AXI_rid(processing_system7_1_m_axi_gp1_RID),
        .S00_AXI_rlast(processing_system7_1_m_axi_gp1_RLAST),
        .S00_AXI_rready(processing_system7_1_m_axi_gp1_RREADY),
        .S00_AXI_rresp(processing_system7_1_m_axi_gp1_RRESP),
        .S00_AXI_rvalid(processing_system7_1_m_axi_gp1_RVALID),
        .S00_AXI_wdata(processing_system7_1_m_axi_gp1_WDATA),
        .S00_AXI_wid(processing_system7_1_m_axi_gp1_WID),
        .S00_AXI_wlast(processing_system7_1_m_axi_gp1_WLAST),
        .S00_AXI_wready(processing_system7_1_m_axi_gp1_WREADY),
        .S00_AXI_wstrb(processing_system7_1_m_axi_gp1_WSTRB),
        .S00_AXI_wvalid(processing_system7_1_m_axi_gp1_WVALID));
  zynq_design_1_mig_7series_1_0 mig_7series_1
       (.aresetn(proc_sys_reset_0_peripheral_aresetn),
        .ddr3_addr(mig_7series_1_ddr3_ADDR),
        .ddr3_ba(mig_7series_1_ddr3_BA),
        .ddr3_cas_n(mig_7series_1_ddr3_CAS_N),
        .ddr3_ck_n(mig_7series_1_ddr3_CK_N),
        .ddr3_ck_p(mig_7series_1_ddr3_CK_P),
        .ddr3_cke(mig_7series_1_ddr3_CKE),
        .ddr3_cs_n(mig_7series_1_ddr3_CS_N),
        .ddr3_dm(mig_7series_1_ddr3_DM),
        .ddr3_dq(DDR3_dq[31:0]),
        .ddr3_dqs_n(DDR3_dqs_n[3:0]),
        .ddr3_dqs_p(DDR3_dqs_p[3:0]),
        .ddr3_odt(mig_7series_1_ddr3_ODT),
        .ddr3_ras_n(mig_7series_1_ddr3_RAS_N),
        .ddr3_reset_n(mig_7series_1_ddr3_RESET_N),
        .ddr3_we_n(mig_7series_1_ddr3_WE_N),
        .s_axi_araddr(axi_mem_intercon_m00_axi_ARADDR[28:0]),
        .s_axi_arburst(axi_mem_intercon_m00_axi_ARBURST),
        .s_axi_arcache(axi_mem_intercon_m00_axi_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(axi_mem_intercon_m00_axi_ARLEN),
        .s_axi_arlock(axi_mem_intercon_m00_axi_ARLOCK),
        .s_axi_arprot(axi_mem_intercon_m00_axi_ARPROT),
        .s_axi_arqos(axi_mem_intercon_m00_axi_ARQOS),
        .s_axi_arready(axi_mem_intercon_m00_axi_ARREADY),
        .s_axi_arsize(axi_mem_intercon_m00_axi_ARSIZE),
        .s_axi_arvalid(axi_mem_intercon_m00_axi_ARVALID),
        .s_axi_awaddr(axi_mem_intercon_m00_axi_AWADDR[28:0]),
        .s_axi_awburst(axi_mem_intercon_m00_axi_AWBURST),
        .s_axi_awcache(axi_mem_intercon_m00_axi_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(axi_mem_intercon_m00_axi_AWLEN),
        .s_axi_awlock(axi_mem_intercon_m00_axi_AWLOCK),
        .s_axi_awprot(axi_mem_intercon_m00_axi_AWPROT),
        .s_axi_awqos(axi_mem_intercon_m00_axi_AWQOS),
        .s_axi_awready(axi_mem_intercon_m00_axi_AWREADY),
        .s_axi_awsize(axi_mem_intercon_m00_axi_AWSIZE),
        .s_axi_awvalid(axi_mem_intercon_m00_axi_AWVALID),
        .s_axi_bready(axi_mem_intercon_m00_axi_BREADY),
        .s_axi_bresp(axi_mem_intercon_m00_axi_BRESP),
        .s_axi_bvalid(axi_mem_intercon_m00_axi_BVALID),
        .s_axi_rdata(axi_mem_intercon_m00_axi_RDATA),
        .s_axi_rlast(axi_mem_intercon_m00_axi_RLAST),
        .s_axi_rready(axi_mem_intercon_m00_axi_RREADY),
        .s_axi_rresp(axi_mem_intercon_m00_axi_RRESP),
        .s_axi_rvalid(axi_mem_intercon_m00_axi_RVALID),
        .s_axi_wdata(axi_mem_intercon_m00_axi_WDATA),
        .s_axi_wlast(axi_mem_intercon_m00_axi_WLAST),
        .s_axi_wready(axi_mem_intercon_m00_axi_WREADY),
        .s_axi_wstrb(axi_mem_intercon_m00_axi_WSTRB),
        .s_axi_wvalid(axi_mem_intercon_m00_axi_WVALID),
        .sys_clk_n(sys_clk_n_1),
        .sys_clk_p(sys_clk_p_1),
        .sys_rst(sys_rst_1),
        .ui_clk(mig_7series_1_ui_clk));
  zynq_design_1_proc_sys_reset_0 proc_sys_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_1_fclk_reset0_n),
        .interconnect_aresetn(proc_sys_reset_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_1_fclk_clk0));
  zynq_design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_1_fclk_reset0_n),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(mig_7series_1_ui_clk));
  zynq_design_1_processing_system7_1_0 processing_system7_1
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_1_fclk_clk0),
        .FCLK_RESET0_N(processing_system7_1_fclk_reset0_n),
        .IRQ_F2P(1'b0),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_1_fclk_clk0),
        .M_AXI_GP0_ARADDR(processing_system7_1_m_axi_gp0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_1_m_axi_gp0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_1_m_axi_gp0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_1_m_axi_gp0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_1_m_axi_gp0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_1_m_axi_gp0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_1_m_axi_gp0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_1_m_axi_gp0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_1_m_axi_gp0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_1_m_axi_gp0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_1_m_axi_gp0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_1_m_axi_gp0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_1_m_axi_gp0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_1_m_axi_gp0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_1_m_axi_gp0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_1_m_axi_gp0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_1_m_axi_gp0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_1_m_axi_gp0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_1_m_axi_gp0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_1_m_axi_gp0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_1_m_axi_gp0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_1_m_axi_gp0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_1_m_axi_gp0_BID),
        .M_AXI_GP0_BREADY(processing_system7_1_m_axi_gp0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_1_m_axi_gp0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_1_m_axi_gp0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_1_m_axi_gp0_RDATA),
        .M_AXI_GP0_RID(processing_system7_1_m_axi_gp0_RID),
        .M_AXI_GP0_RLAST(processing_system7_1_m_axi_gp0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_1_m_axi_gp0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_1_m_axi_gp0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_1_m_axi_gp0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_1_m_axi_gp0_WDATA),
        .M_AXI_GP0_WID(processing_system7_1_m_axi_gp0_WID),
        .M_AXI_GP0_WLAST(processing_system7_1_m_axi_gp0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_1_m_axi_gp0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_1_m_axi_gp0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_1_m_axi_gp0_WVALID),
        .M_AXI_GP1_ACLK(processing_system7_1_fclk_clk0),
        .M_AXI_GP1_ARADDR(processing_system7_1_m_axi_gp1_ARADDR),
        .M_AXI_GP1_ARBURST(processing_system7_1_m_axi_gp1_ARBURST),
        .M_AXI_GP1_ARCACHE(processing_system7_1_m_axi_gp1_ARCACHE),
        .M_AXI_GP1_ARID(processing_system7_1_m_axi_gp1_ARID),
        .M_AXI_GP1_ARLEN(processing_system7_1_m_axi_gp1_ARLEN),
        .M_AXI_GP1_ARLOCK(processing_system7_1_m_axi_gp1_ARLOCK),
        .M_AXI_GP1_ARPROT(processing_system7_1_m_axi_gp1_ARPROT),
        .M_AXI_GP1_ARQOS(processing_system7_1_m_axi_gp1_ARQOS),
        .M_AXI_GP1_ARREADY(processing_system7_1_m_axi_gp1_ARREADY),
        .M_AXI_GP1_ARSIZE(processing_system7_1_m_axi_gp1_ARSIZE),
        .M_AXI_GP1_ARVALID(processing_system7_1_m_axi_gp1_ARVALID),
        .M_AXI_GP1_AWADDR(processing_system7_1_m_axi_gp1_AWADDR),
        .M_AXI_GP1_AWBURST(processing_system7_1_m_axi_gp1_AWBURST),
        .M_AXI_GP1_AWCACHE(processing_system7_1_m_axi_gp1_AWCACHE),
        .M_AXI_GP1_AWID(processing_system7_1_m_axi_gp1_AWID),
        .M_AXI_GP1_AWLEN(processing_system7_1_m_axi_gp1_AWLEN),
        .M_AXI_GP1_AWLOCK(processing_system7_1_m_axi_gp1_AWLOCK),
        .M_AXI_GP1_AWPROT(processing_system7_1_m_axi_gp1_AWPROT),
        .M_AXI_GP1_AWQOS(processing_system7_1_m_axi_gp1_AWQOS),
        .M_AXI_GP1_AWREADY(processing_system7_1_m_axi_gp1_AWREADY),
        .M_AXI_GP1_AWSIZE(processing_system7_1_m_axi_gp1_AWSIZE),
        .M_AXI_GP1_AWVALID(processing_system7_1_m_axi_gp1_AWVALID),
        .M_AXI_GP1_BID(processing_system7_1_m_axi_gp1_BID),
        .M_AXI_GP1_BREADY(processing_system7_1_m_axi_gp1_BREADY),
        .M_AXI_GP1_BRESP(processing_system7_1_m_axi_gp1_BRESP),
        .M_AXI_GP1_BVALID(processing_system7_1_m_axi_gp1_BVALID),
        .M_AXI_GP1_RDATA(processing_system7_1_m_axi_gp1_RDATA),
        .M_AXI_GP1_RID(processing_system7_1_m_axi_gp1_RID),
        .M_AXI_GP1_RLAST(processing_system7_1_m_axi_gp1_RLAST),
        .M_AXI_GP1_RREADY(processing_system7_1_m_axi_gp1_RREADY),
        .M_AXI_GP1_RRESP(processing_system7_1_m_axi_gp1_RRESP),
        .M_AXI_GP1_RVALID(processing_system7_1_m_axi_gp1_RVALID),
        .M_AXI_GP1_WDATA(processing_system7_1_m_axi_gp1_WDATA),
        .M_AXI_GP1_WID(processing_system7_1_m_axi_gp1_WID),
        .M_AXI_GP1_WLAST(processing_system7_1_m_axi_gp1_WLAST),
        .M_AXI_GP1_WREADY(processing_system7_1_m_axi_gp1_WREADY),
        .M_AXI_GP1_WSTRB(processing_system7_1_m_axi_gp1_WSTRB),
        .M_AXI_GP1_WVALID(processing_system7_1_m_axi_gp1_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SDIO0_WP(xlconstant_0_const),
        .USB0_VBUS_PWRFAULT(1'b0));
  zynq_design_1_processing_system7_1_axi_periph_0 processing_system7_1_axi_periph
       (.ACLK(processing_system7_1_fclk_clk0),
        .ARESETN(proc_sys_reset_interconnect_aresetn),
        .M00_ACLK(processing_system7_1_fclk_clk0),
        .M00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M00_AXI_araddr(processing_system7_1_axi_periph_m00_axi_ARADDR),
        .M00_AXI_arready(processing_system7_1_axi_periph_m00_axi_ARREADY),
        .M00_AXI_arvalid(processing_system7_1_axi_periph_m00_axi_ARVALID),
        .M00_AXI_awaddr(processing_system7_1_axi_periph_m00_axi_AWADDR),
        .M00_AXI_awready(processing_system7_1_axi_periph_m00_axi_AWREADY),
        .M00_AXI_awvalid(processing_system7_1_axi_periph_m00_axi_AWVALID),
        .M00_AXI_bready(processing_system7_1_axi_periph_m00_axi_BREADY),
        .M00_AXI_bresp(processing_system7_1_axi_periph_m00_axi_BRESP),
        .M00_AXI_bvalid(processing_system7_1_axi_periph_m00_axi_BVALID),
        .M00_AXI_rdata(processing_system7_1_axi_periph_m00_axi_RDATA),
        .M00_AXI_rready(processing_system7_1_axi_periph_m00_axi_RREADY),
        .M00_AXI_rresp(processing_system7_1_axi_periph_m00_axi_RRESP),
        .M00_AXI_rvalid(processing_system7_1_axi_periph_m00_axi_RVALID),
        .M00_AXI_wdata(processing_system7_1_axi_periph_m00_axi_WDATA),
        .M00_AXI_wready(processing_system7_1_axi_periph_m00_axi_WREADY),
        .M00_AXI_wstrb(processing_system7_1_axi_periph_m00_axi_WSTRB),
        .M00_AXI_wvalid(processing_system7_1_axi_periph_m00_axi_WVALID),
        .M01_ACLK(processing_system7_1_fclk_clk0),
        .M01_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M01_AXI_araddr(processing_system7_1_axi_periph_m01_axi_ARADDR),
        .M01_AXI_arready(processing_system7_1_axi_periph_m01_axi_ARREADY),
        .M01_AXI_arvalid(processing_system7_1_axi_periph_m01_axi_ARVALID),
        .M01_AXI_awaddr(processing_system7_1_axi_periph_m01_axi_AWADDR),
        .M01_AXI_awready(processing_system7_1_axi_periph_m01_axi_AWREADY),
        .M01_AXI_awvalid(processing_system7_1_axi_periph_m01_axi_AWVALID),
        .M01_AXI_bready(processing_system7_1_axi_periph_m01_axi_BREADY),
        .M01_AXI_bresp(processing_system7_1_axi_periph_m01_axi_BRESP),
        .M01_AXI_bvalid(processing_system7_1_axi_periph_m01_axi_BVALID),
        .M01_AXI_rdata(processing_system7_1_axi_periph_m01_axi_RDATA),
        .M01_AXI_rready(processing_system7_1_axi_periph_m01_axi_RREADY),
        .M01_AXI_rresp(processing_system7_1_axi_periph_m01_axi_RRESP),
        .M01_AXI_rvalid(processing_system7_1_axi_periph_m01_axi_RVALID),
        .M01_AXI_wdata(processing_system7_1_axi_periph_m01_axi_WDATA),
        .M01_AXI_wready(processing_system7_1_axi_periph_m01_axi_WREADY),
        .M01_AXI_wstrb(processing_system7_1_axi_periph_m01_axi_WSTRB),
        .M01_AXI_wvalid(processing_system7_1_axi_periph_m01_axi_WVALID),
        .M02_ACLK(processing_system7_1_fclk_clk0),
        .M02_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M02_AXI_araddr(processing_system7_1_axi_periph_m02_axi_ARADDR),
        .M02_AXI_arready(processing_system7_1_axi_periph_m02_axi_ARREADY),
        .M02_AXI_arvalid(processing_system7_1_axi_periph_m02_axi_ARVALID),
        .M02_AXI_awaddr(processing_system7_1_axi_periph_m02_axi_AWADDR),
        .M02_AXI_awready(processing_system7_1_axi_periph_m02_axi_AWREADY),
        .M02_AXI_awvalid(processing_system7_1_axi_periph_m02_axi_AWVALID),
        .M02_AXI_bready(processing_system7_1_axi_periph_m02_axi_BREADY),
        .M02_AXI_bresp(processing_system7_1_axi_periph_m02_axi_BRESP),
        .M02_AXI_bvalid(processing_system7_1_axi_periph_m02_axi_BVALID),
        .M02_AXI_rdata(processing_system7_1_axi_periph_m02_axi_RDATA),
        .M02_AXI_rready(processing_system7_1_axi_periph_m02_axi_RREADY),
        .M02_AXI_rresp(processing_system7_1_axi_periph_m02_axi_RRESP),
        .M02_AXI_rvalid(processing_system7_1_axi_periph_m02_axi_RVALID),
        .M02_AXI_wdata(processing_system7_1_axi_periph_m02_axi_WDATA),
        .M02_AXI_wready(processing_system7_1_axi_periph_m02_axi_WREADY),
        .M02_AXI_wstrb(processing_system7_1_axi_periph_m02_axi_WSTRB),
        .M02_AXI_wvalid(processing_system7_1_axi_periph_m02_axi_WVALID),
        .M03_ACLK(processing_system7_1_fclk_clk0),
        .M03_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M03_AXI_araddr(processing_system7_1_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(processing_system7_1_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(processing_system7_1_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(processing_system7_1_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(processing_system7_1_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(processing_system7_1_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(processing_system7_1_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(processing_system7_1_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(processing_system7_1_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(processing_system7_1_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(processing_system7_1_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(processing_system7_1_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(processing_system7_1_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(processing_system7_1_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(processing_system7_1_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(processing_system7_1_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(processing_system7_1_axi_periph_M03_AXI_WVALID),
        .S00_ACLK(processing_system7_1_fclk_clk0),
        .S00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_1_m_axi_gp0_ARADDR),
        .S00_AXI_arburst(processing_system7_1_m_axi_gp0_ARBURST),
        .S00_AXI_arcache(processing_system7_1_m_axi_gp0_ARCACHE),
        .S00_AXI_arid(processing_system7_1_m_axi_gp0_ARID),
        .S00_AXI_arlen(processing_system7_1_m_axi_gp0_ARLEN),
        .S00_AXI_arlock(processing_system7_1_m_axi_gp0_ARLOCK),
        .S00_AXI_arprot(processing_system7_1_m_axi_gp0_ARPROT),
        .S00_AXI_arqos(processing_system7_1_m_axi_gp0_ARQOS),
        .S00_AXI_arready(processing_system7_1_m_axi_gp0_ARREADY),
        .S00_AXI_arsize(processing_system7_1_m_axi_gp0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_1_m_axi_gp0_ARVALID),
        .S00_AXI_awaddr(processing_system7_1_m_axi_gp0_AWADDR),
        .S00_AXI_awburst(processing_system7_1_m_axi_gp0_AWBURST),
        .S00_AXI_awcache(processing_system7_1_m_axi_gp0_AWCACHE),
        .S00_AXI_awid(processing_system7_1_m_axi_gp0_AWID),
        .S00_AXI_awlen(processing_system7_1_m_axi_gp0_AWLEN),
        .S00_AXI_awlock(processing_system7_1_m_axi_gp0_AWLOCK),
        .S00_AXI_awprot(processing_system7_1_m_axi_gp0_AWPROT),
        .S00_AXI_awqos(processing_system7_1_m_axi_gp0_AWQOS),
        .S00_AXI_awready(processing_system7_1_m_axi_gp0_AWREADY),
        .S00_AXI_awsize(processing_system7_1_m_axi_gp0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_1_m_axi_gp0_AWVALID),
        .S00_AXI_bid(processing_system7_1_m_axi_gp0_BID),
        .S00_AXI_bready(processing_system7_1_m_axi_gp0_BREADY),
        .S00_AXI_bresp(processing_system7_1_m_axi_gp0_BRESP),
        .S00_AXI_bvalid(processing_system7_1_m_axi_gp0_BVALID),
        .S00_AXI_rdata(processing_system7_1_m_axi_gp0_RDATA),
        .S00_AXI_rid(processing_system7_1_m_axi_gp0_RID),
        .S00_AXI_rlast(processing_system7_1_m_axi_gp0_RLAST),
        .S00_AXI_rready(processing_system7_1_m_axi_gp0_RREADY),
        .S00_AXI_rresp(processing_system7_1_m_axi_gp0_RRESP),
        .S00_AXI_rvalid(processing_system7_1_m_axi_gp0_RVALID),
        .S00_AXI_wdata(processing_system7_1_m_axi_gp0_WDATA),
        .S00_AXI_wid(processing_system7_1_m_axi_gp0_WID),
        .S00_AXI_wlast(processing_system7_1_m_axi_gp0_WLAST),
        .S00_AXI_wready(processing_system7_1_m_axi_gp0_WREADY),
        .S00_AXI_wstrb(processing_system7_1_m_axi_gp0_WSTRB),
        .S00_AXI_wvalid(processing_system7_1_m_axi_gp0_WVALID));
  zynq_design_1_scanhash_sha256d_0_0 scanhash_sha256d_0
       (.ap_clk(processing_system7_1_fclk_clk0),
        .ap_rst_n(proc_sys_reset_peripheral_aresetn),
        .s_axi_CTRL_BUS_ARADDR(processing_system7_1_axi_periph_M03_AXI_ARADDR[8:0]),
        .s_axi_CTRL_BUS_ARREADY(processing_system7_1_axi_periph_M03_AXI_ARREADY),
        .s_axi_CTRL_BUS_ARVALID(processing_system7_1_axi_periph_M03_AXI_ARVALID),
        .s_axi_CTRL_BUS_AWADDR(processing_system7_1_axi_periph_M03_AXI_AWADDR[8:0]),
        .s_axi_CTRL_BUS_AWREADY(processing_system7_1_axi_periph_M03_AXI_AWREADY),
        .s_axi_CTRL_BUS_AWVALID(processing_system7_1_axi_periph_M03_AXI_AWVALID),
        .s_axi_CTRL_BUS_BREADY(processing_system7_1_axi_periph_M03_AXI_BREADY),
        .s_axi_CTRL_BUS_BRESP(processing_system7_1_axi_periph_M03_AXI_BRESP),
        .s_axi_CTRL_BUS_BVALID(processing_system7_1_axi_periph_M03_AXI_BVALID),
        .s_axi_CTRL_BUS_RDATA(processing_system7_1_axi_periph_M03_AXI_RDATA),
        .s_axi_CTRL_BUS_RREADY(processing_system7_1_axi_periph_M03_AXI_RREADY),
        .s_axi_CTRL_BUS_RRESP(processing_system7_1_axi_periph_M03_AXI_RRESP),
        .s_axi_CTRL_BUS_RVALID(processing_system7_1_axi_periph_M03_AXI_RVALID),
        .s_axi_CTRL_BUS_WDATA(processing_system7_1_axi_periph_M03_AXI_WDATA),
        .s_axi_CTRL_BUS_WREADY(processing_system7_1_axi_periph_M03_AXI_WREADY),
        .s_axi_CTRL_BUS_WSTRB(processing_system7_1_axi_periph_M03_AXI_WSTRB),
        .s_axi_CTRL_BUS_WVALID(processing_system7_1_axi_periph_M03_AXI_WVALID));
  zynq_design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_const));
endmodule

module zynq_design_1_axi_mem_intercon_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [255:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [255:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [31:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_mem_intercon_ACLK_net;
  wire axi_mem_intercon_ARESETN_net;
  wire [31:0]axi_mem_intercon_to_s00_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARCACHE;
  wire [11:0]axi_mem_intercon_to_s00_couplers_ARID;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARLEN;
  wire [1:0]axi_mem_intercon_to_s00_couplers_ARLOCK;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARPROT;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARQOS;
  wire axi_mem_intercon_to_s00_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARSIZE;
  wire axi_mem_intercon_to_s00_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWCACHE;
  wire [11:0]axi_mem_intercon_to_s00_couplers_AWID;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWLEN;
  wire [1:0]axi_mem_intercon_to_s00_couplers_AWLOCK;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWPROT;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWQOS;
  wire axi_mem_intercon_to_s00_couplers_AWREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_to_s00_couplers_AWVALID;
  wire [11:0]axi_mem_intercon_to_s00_couplers_BID;
  wire axi_mem_intercon_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_BRESP;
  wire axi_mem_intercon_to_s00_couplers_BVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_RDATA;
  wire [11:0]axi_mem_intercon_to_s00_couplers_RID;
  wire axi_mem_intercon_to_s00_couplers_RLAST;
  wire axi_mem_intercon_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_RRESP;
  wire axi_mem_intercon_to_s00_couplers_RVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_WDATA;
  wire [11:0]axi_mem_intercon_to_s00_couplers_WID;
  wire axi_mem_intercon_to_s00_couplers_WLAST;
  wire axi_mem_intercon_to_s00_couplers_WREADY;
  wire [3:0]axi_mem_intercon_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_ARADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_ARBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_ARCACHE;
  wire [7:0]s00_couplers_to_axi_mem_intercon_ARLEN;
  wire s00_couplers_to_axi_mem_intercon_ARLOCK;
  wire [2:0]s00_couplers_to_axi_mem_intercon_ARPROT;
  wire [3:0]s00_couplers_to_axi_mem_intercon_ARQOS;
  wire s00_couplers_to_axi_mem_intercon_ARREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_ARSIZE;
  wire s00_couplers_to_axi_mem_intercon_ARVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_AWADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_AWBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_AWCACHE;
  wire [7:0]s00_couplers_to_axi_mem_intercon_AWLEN;
  wire s00_couplers_to_axi_mem_intercon_AWLOCK;
  wire [2:0]s00_couplers_to_axi_mem_intercon_AWPROT;
  wire [3:0]s00_couplers_to_axi_mem_intercon_AWQOS;
  wire s00_couplers_to_axi_mem_intercon_AWREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_AWSIZE;
  wire s00_couplers_to_axi_mem_intercon_AWVALID;
  wire s00_couplers_to_axi_mem_intercon_BREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_BRESP;
  wire s00_couplers_to_axi_mem_intercon_BVALID;
  wire [255:0]s00_couplers_to_axi_mem_intercon_RDATA;
  wire s00_couplers_to_axi_mem_intercon_RLAST;
  wire s00_couplers_to_axi_mem_intercon_RREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_RRESP;
  wire s00_couplers_to_axi_mem_intercon_RVALID;
  wire [255:0]s00_couplers_to_axi_mem_intercon_WDATA;
  wire s00_couplers_to_axi_mem_intercon_WLAST;
  wire s00_couplers_to_axi_mem_intercon_WREADY;
  wire [31:0]s00_couplers_to_axi_mem_intercon_WSTRB;
  wire s00_couplers_to_axi_mem_intercon_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_mem_intercon_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_mem_intercon_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_mem_intercon_ARCACHE;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_mem_intercon_ARLEN;
  assign M00_AXI_arlock = s00_couplers_to_axi_mem_intercon_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_mem_intercon_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_mem_intercon_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_mem_intercon_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_mem_intercon_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_mem_intercon_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_mem_intercon_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_mem_intercon_AWCACHE;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_mem_intercon_AWLEN;
  assign M00_AXI_awlock = s00_couplers_to_axi_mem_intercon_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_mem_intercon_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_mem_intercon_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_mem_intercon_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_mem_intercon_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_mem_intercon_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_mem_intercon_RREADY;
  assign M00_AXI_wdata[255:0] = s00_couplers_to_axi_mem_intercon_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_mem_intercon_WLAST;
  assign M00_AXI_wstrb[31:0] = s00_couplers_to_axi_mem_intercon_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_mem_intercon_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_mem_intercon_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_mem_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_mem_intercon_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_mem_intercon_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_mem_intercon_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_mem_intercon_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mem_intercon_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mem_intercon_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_mem_intercon_to_s00_couplers_WREADY;
  assign axi_mem_intercon_ACLK_net = M00_ACLK;
  assign axi_mem_intercon_ARESETN_net = M00_ARESETN;
  assign axi_mem_intercon_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_mem_intercon_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_mem_intercon_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mem_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_mem_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_mem_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mem_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_mem_intercon_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_mem_intercon_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_mem_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_mem_intercon_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_mem_intercon_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_mem_intercon_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_mem_intercon_RDATA = M00_AXI_rdata[255:0];
  assign s00_couplers_to_axi_mem_intercon_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_mem_intercon_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_mem_intercon_WREADY = M00_AXI_wready;
  s00_couplers_imp_T90PQ3 s00_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_mem_intercon_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_mem_intercon_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_mem_intercon_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_axi_mem_intercon_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_mem_intercon_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_mem_intercon_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_mem_intercon_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_mem_intercon_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_mem_intercon_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_mem_intercon_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_mem_intercon_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_mem_intercon_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_mem_intercon_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_axi_mem_intercon_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_mem_intercon_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_mem_intercon_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_mem_intercon_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_mem_intercon_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_mem_intercon_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_mem_intercon_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_mem_intercon_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_mem_intercon_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_mem_intercon_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_mem_intercon_RDATA),
        .M_AXI_rlast(s00_couplers_to_axi_mem_intercon_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_mem_intercon_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_mem_intercon_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_mem_intercon_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_mem_intercon_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_mem_intercon_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_mem_intercon_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_mem_intercon_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_mem_intercon_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_mem_intercon_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_mem_intercon_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_mem_intercon_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_mem_intercon_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_mem_intercon_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_mem_intercon_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_mem_intercon_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_mem_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_mem_intercon_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_mem_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_mem_intercon_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_mem_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_mem_intercon_to_s00_couplers_BID),
        .S_AXI_bready(axi_mem_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_mem_intercon_to_s00_couplers_RID),
        .S_AXI_rlast(axi_mem_intercon_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_mem_intercon_to_s00_couplers_WID),
        .S_AXI_wlast(axi_mem_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s00_couplers_WVALID));
endmodule

module zynq_design_1_processing_system7_1_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_processing_system7_1_axi_periph_ARADDR;
  wire m00_couplers_to_processing_system7_1_axi_periph_ARREADY;
  wire m00_couplers_to_processing_system7_1_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_processing_system7_1_axi_periph_AWADDR;
  wire m00_couplers_to_processing_system7_1_axi_periph_AWREADY;
  wire m00_couplers_to_processing_system7_1_axi_periph_AWVALID;
  wire m00_couplers_to_processing_system7_1_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_processing_system7_1_axi_periph_BRESP;
  wire m00_couplers_to_processing_system7_1_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_processing_system7_1_axi_periph_RDATA;
  wire m00_couplers_to_processing_system7_1_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_processing_system7_1_axi_periph_RRESP;
  wire m00_couplers_to_processing_system7_1_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_processing_system7_1_axi_periph_WDATA;
  wire m00_couplers_to_processing_system7_1_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_processing_system7_1_axi_periph_WSTRB;
  wire m00_couplers_to_processing_system7_1_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_processing_system7_1_axi_periph_ARADDR;
  wire m01_couplers_to_processing_system7_1_axi_periph_ARREADY;
  wire m01_couplers_to_processing_system7_1_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_processing_system7_1_axi_periph_AWADDR;
  wire m01_couplers_to_processing_system7_1_axi_periph_AWREADY;
  wire m01_couplers_to_processing_system7_1_axi_periph_AWVALID;
  wire m01_couplers_to_processing_system7_1_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_processing_system7_1_axi_periph_BRESP;
  wire m01_couplers_to_processing_system7_1_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_processing_system7_1_axi_periph_RDATA;
  wire m01_couplers_to_processing_system7_1_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_processing_system7_1_axi_periph_RRESP;
  wire m01_couplers_to_processing_system7_1_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_processing_system7_1_axi_periph_WDATA;
  wire m01_couplers_to_processing_system7_1_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_processing_system7_1_axi_periph_WSTRB;
  wire m01_couplers_to_processing_system7_1_axi_periph_WVALID;
  wire [31:0]m02_couplers_to_processing_system7_1_axi_periph_ARADDR;
  wire m02_couplers_to_processing_system7_1_axi_periph_ARREADY;
  wire m02_couplers_to_processing_system7_1_axi_periph_ARVALID;
  wire [31:0]m02_couplers_to_processing_system7_1_axi_periph_AWADDR;
  wire m02_couplers_to_processing_system7_1_axi_periph_AWREADY;
  wire m02_couplers_to_processing_system7_1_axi_periph_AWVALID;
  wire m02_couplers_to_processing_system7_1_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_processing_system7_1_axi_periph_BRESP;
  wire m02_couplers_to_processing_system7_1_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_processing_system7_1_axi_periph_RDATA;
  wire m02_couplers_to_processing_system7_1_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_processing_system7_1_axi_periph_RRESP;
  wire m02_couplers_to_processing_system7_1_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_processing_system7_1_axi_periph_WDATA;
  wire m02_couplers_to_processing_system7_1_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_processing_system7_1_axi_periph_WSTRB;
  wire m02_couplers_to_processing_system7_1_axi_periph_WVALID;
  wire [31:0]m03_couplers_to_processing_system7_1_axi_periph_ARADDR;
  wire m03_couplers_to_processing_system7_1_axi_periph_ARREADY;
  wire m03_couplers_to_processing_system7_1_axi_periph_ARVALID;
  wire [31:0]m03_couplers_to_processing_system7_1_axi_periph_AWADDR;
  wire m03_couplers_to_processing_system7_1_axi_periph_AWREADY;
  wire m03_couplers_to_processing_system7_1_axi_periph_AWVALID;
  wire m03_couplers_to_processing_system7_1_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_processing_system7_1_axi_periph_BRESP;
  wire m03_couplers_to_processing_system7_1_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_processing_system7_1_axi_periph_RDATA;
  wire m03_couplers_to_processing_system7_1_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_processing_system7_1_axi_periph_RRESP;
  wire m03_couplers_to_processing_system7_1_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_processing_system7_1_axi_periph_WDATA;
  wire m03_couplers_to_processing_system7_1_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_processing_system7_1_axi_periph_WSTRB;
  wire m03_couplers_to_processing_system7_1_axi_periph_WVALID;
  wire processing_system7_1_axi_periph_ACLK_net;
  wire processing_system7_1_axi_periph_ARESETN_net;
  wire [31:0]processing_system7_1_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]processing_system7_1_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]processing_system7_1_axi_periph_to_s00_couplers_ARCACHE;
  wire [11:0]processing_system7_1_axi_periph_to_s00_couplers_ARID;
  wire [3:0]processing_system7_1_axi_periph_to_s00_couplers_ARLEN;
  wire [1:0]processing_system7_1_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]processing_system7_1_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]processing_system7_1_axi_periph_to_s00_couplers_ARQOS;
  wire processing_system7_1_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]processing_system7_1_axi_periph_to_s00_couplers_ARSIZE;
  wire processing_system7_1_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]processing_system7_1_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]processing_system7_1_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]processing_system7_1_axi_periph_to_s00_couplers_AWCACHE;
  wire [11:0]processing_system7_1_axi_periph_to_s00_couplers_AWID;
  wire [3:0]processing_system7_1_axi_periph_to_s00_couplers_AWLEN;
  wire [1:0]processing_system7_1_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]processing_system7_1_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]processing_system7_1_axi_periph_to_s00_couplers_AWQOS;
  wire processing_system7_1_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]processing_system7_1_axi_periph_to_s00_couplers_AWSIZE;
  wire processing_system7_1_axi_periph_to_s00_couplers_AWVALID;
  wire [11:0]processing_system7_1_axi_periph_to_s00_couplers_BID;
  wire processing_system7_1_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]processing_system7_1_axi_periph_to_s00_couplers_BRESP;
  wire processing_system7_1_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]processing_system7_1_axi_periph_to_s00_couplers_RDATA;
  wire [11:0]processing_system7_1_axi_periph_to_s00_couplers_RID;
  wire processing_system7_1_axi_periph_to_s00_couplers_RLAST;
  wire processing_system7_1_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]processing_system7_1_axi_periph_to_s00_couplers_RRESP;
  wire processing_system7_1_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]processing_system7_1_axi_periph_to_s00_couplers_WDATA;
  wire [11:0]processing_system7_1_axi_periph_to_s00_couplers_WID;
  wire processing_system7_1_axi_periph_to_s00_couplers_WLAST;
  wire processing_system7_1_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]processing_system7_1_axi_periph_to_s00_couplers_WSTRB;
  wire processing_system7_1_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_processing_system7_1_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_processing_system7_1_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_processing_system7_1_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_processing_system7_1_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_processing_system7_1_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_processing_system7_1_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_processing_system7_1_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_processing_system7_1_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_processing_system7_1_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_processing_system7_1_axi_periph_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_processing_system7_1_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_processing_system7_1_axi_periph_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_processing_system7_1_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_processing_system7_1_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_processing_system7_1_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_processing_system7_1_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_processing_system7_1_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_processing_system7_1_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_processing_system7_1_axi_periph_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_processing_system7_1_axi_periph_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_processing_system7_1_axi_periph_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_processing_system7_1_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_processing_system7_1_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_processing_system7_1_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_processing_system7_1_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_processing_system7_1_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_processing_system7_1_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_processing_system7_1_axi_periph_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_processing_system7_1_axi_periph_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_processing_system7_1_axi_periph_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_processing_system7_1_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_processing_system7_1_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_processing_system7_1_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_processing_system7_1_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_processing_system7_1_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_processing_system7_1_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = processing_system7_1_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = processing_system7_1_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = processing_system7_1_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = processing_system7_1_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = processing_system7_1_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = processing_system7_1_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = processing_system7_1_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = processing_system7_1_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = processing_system7_1_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = processing_system7_1_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = processing_system7_1_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_processing_system7_1_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_processing_system7_1_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_processing_system7_1_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_processing_system7_1_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_processing_system7_1_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_processing_system7_1_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_processing_system7_1_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_processing_system7_1_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_processing_system7_1_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_processing_system7_1_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_processing_system7_1_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_processing_system7_1_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_processing_system7_1_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_processing_system7_1_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_processing_system7_1_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_processing_system7_1_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_processing_system7_1_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_processing_system7_1_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_processing_system7_1_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_processing_system7_1_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_processing_system7_1_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_processing_system7_1_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_processing_system7_1_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_processing_system7_1_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_processing_system7_1_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_processing_system7_1_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_processing_system7_1_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_processing_system7_1_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_processing_system7_1_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_processing_system7_1_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_processing_system7_1_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_processing_system7_1_axi_periph_WREADY = M03_AXI_wready;
  assign processing_system7_1_axi_periph_ACLK_net = ACLK;
  assign processing_system7_1_axi_periph_ARESETN_net = ARESETN;
  assign processing_system7_1_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign processing_system7_1_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign processing_system7_1_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign processing_system7_1_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign processing_system7_1_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign processing_system7_1_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign processing_system7_1_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_NWAYHE m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_processing_system7_1_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_processing_system7_1_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_processing_system7_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_processing_system7_1_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_processing_system7_1_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_processing_system7_1_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_processing_system7_1_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_processing_system7_1_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_processing_system7_1_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_processing_system7_1_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_processing_system7_1_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_processing_system7_1_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_processing_system7_1_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_processing_system7_1_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_processing_system7_1_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_processing_system7_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_processing_system7_1_axi_periph_WVALID),
        .S_ACLK(processing_system7_1_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1KYXPZA m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_processing_system7_1_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_processing_system7_1_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_processing_system7_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_processing_system7_1_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_processing_system7_1_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_processing_system7_1_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_processing_system7_1_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_processing_system7_1_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_processing_system7_1_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_processing_system7_1_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_processing_system7_1_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_processing_system7_1_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_processing_system7_1_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_processing_system7_1_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_processing_system7_1_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_processing_system7_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_processing_system7_1_axi_periph_WVALID),
        .S_ACLK(processing_system7_1_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1G30E7V m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_processing_system7_1_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_processing_system7_1_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_processing_system7_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_processing_system7_1_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_processing_system7_1_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_processing_system7_1_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_processing_system7_1_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_processing_system7_1_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_processing_system7_1_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_processing_system7_1_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_processing_system7_1_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_processing_system7_1_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_processing_system7_1_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_processing_system7_1_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_processing_system7_1_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_processing_system7_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_processing_system7_1_axi_periph_WVALID),
        .S_ACLK(processing_system7_1_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_93CILR m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_processing_system7_1_axi_periph_ARADDR),
        .M_AXI_arready(m03_couplers_to_processing_system7_1_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_processing_system7_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_processing_system7_1_axi_periph_AWADDR),
        .M_AXI_awready(m03_couplers_to_processing_system7_1_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_processing_system7_1_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_processing_system7_1_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_processing_system7_1_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_processing_system7_1_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_processing_system7_1_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_processing_system7_1_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_processing_system7_1_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_processing_system7_1_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_processing_system7_1_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_processing_system7_1_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_processing_system7_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_processing_system7_1_axi_periph_WVALID),
        .S_ACLK(processing_system7_1_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_KI7GJ1 s00_couplers
       (.M_ACLK(processing_system7_1_axi_periph_ACLK_net),
        .M_ARESETN(processing_system7_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(processing_system7_1_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(processing_system7_1_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(processing_system7_1_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(processing_system7_1_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(processing_system7_1_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(processing_system7_1_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(processing_system7_1_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(processing_system7_1_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(processing_system7_1_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(processing_system7_1_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(processing_system7_1_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(processing_system7_1_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(processing_system7_1_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(processing_system7_1_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(processing_system7_1_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(processing_system7_1_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(processing_system7_1_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(processing_system7_1_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(processing_system7_1_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(processing_system7_1_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(processing_system7_1_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(processing_system7_1_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(processing_system7_1_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(processing_system7_1_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(processing_system7_1_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(processing_system7_1_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(processing_system7_1_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(processing_system7_1_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(processing_system7_1_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(processing_system7_1_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(processing_system7_1_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(processing_system7_1_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(processing_system7_1_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wid(processing_system7_1_axi_periph_to_s00_couplers_WID),
        .S_AXI_wlast(processing_system7_1_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(processing_system7_1_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(processing_system7_1_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(processing_system7_1_axi_periph_to_s00_couplers_WVALID));
  zynq_design_1_xbar_0 xbar
       (.aclk(processing_system7_1_axi_periph_ACLK_net),
        .aresetn(processing_system7_1_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
