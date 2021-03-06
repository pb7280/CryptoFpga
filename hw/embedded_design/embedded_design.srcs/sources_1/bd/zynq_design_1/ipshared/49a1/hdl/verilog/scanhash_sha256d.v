// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="scanhash_sha256d,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z045ffg900-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.671000,HLS_SYN_LAT=-1172874086,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=22905,HLS_SYN_LUT=78762,HLS_VERSION=2018_3}" *)

module scanhash_sha256d (
        ap_clk,
        ap_rst_n,
        s_axi_CTRL_BUS_AWVALID,
        s_axi_CTRL_BUS_AWREADY,
        s_axi_CTRL_BUS_AWADDR,
        s_axi_CTRL_BUS_WVALID,
        s_axi_CTRL_BUS_WREADY,
        s_axi_CTRL_BUS_WDATA,
        s_axi_CTRL_BUS_WSTRB,
        s_axi_CTRL_BUS_ARVALID,
        s_axi_CTRL_BUS_ARREADY,
        s_axi_CTRL_BUS_ARADDR,
        s_axi_CTRL_BUS_RVALID,
        s_axi_CTRL_BUS_RREADY,
        s_axi_CTRL_BUS_RDATA,
        s_axi_CTRL_BUS_RRESP,
        s_axi_CTRL_BUS_BVALID,
        s_axi_CTRL_BUS_BREADY,
        s_axi_CTRL_BUS_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
parameter    C_S_AXI_CTRL_BUS_DATA_WIDTH = 32;
parameter    C_S_AXI_CTRL_BUS_ADDR_WIDTH = 9;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CTRL_BUS_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   s_axi_CTRL_BUS_AWVALID;
output   s_axi_CTRL_BUS_AWREADY;
input  [C_S_AXI_CTRL_BUS_ADDR_WIDTH - 1:0] s_axi_CTRL_BUS_AWADDR;
input   s_axi_CTRL_BUS_WVALID;
output   s_axi_CTRL_BUS_WREADY;
input  [C_S_AXI_CTRL_BUS_DATA_WIDTH - 1:0] s_axi_CTRL_BUS_WDATA;
input  [C_S_AXI_CTRL_BUS_WSTRB_WIDTH - 1:0] s_axi_CTRL_BUS_WSTRB;
input   s_axi_CTRL_BUS_ARVALID;
output   s_axi_CTRL_BUS_ARREADY;
input  [C_S_AXI_CTRL_BUS_ADDR_WIDTH - 1:0] s_axi_CTRL_BUS_ARADDR;
output   s_axi_CTRL_BUS_RVALID;
input   s_axi_CTRL_BUS_RREADY;
output  [C_S_AXI_CTRL_BUS_DATA_WIDTH - 1:0] s_axi_CTRL_BUS_RDATA;
output  [1:0] s_axi_CTRL_BUS_RRESP;
output   s_axi_CTRL_BUS_BVALID;
input   s_axi_CTRL_BUS_BREADY;
output  [1:0] s_axi_CTRL_BUS_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
reg   [4:0] work_address0;
reg    work_ce0;
reg    work_we0;
wire   [31:0] work_q0;
wire   [2:0] target_address0;
reg    target_ce0;
wire   [31:0] target_q0;
wire   [31:0] max_nonce;
wire   [31:0] num_hashes;
reg    num_hashes_ap_vld;
wire   [31:0] ap_return;
wire   [4:0] work_addr_reg_1045;
reg   [31:0] max_nonce_read_reg_1055;
wire    ap_CS_fsm_state2;
reg   [31:0] first_nonce_reg_1060;
reg   [31:0] Htarg_reg_1065;
wire   [31:0] n_fu_393_p2;
reg   [31:0] n_reg_1070;
wire   [4:0] i_1_fu_405_p2;
reg   [4:0] i_1_reg_1078;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond_fu_399_p2;
wire   [63:0] tmp_74_fu_486_p1;
reg   [63:0] tmp_74_reg_1168;
wire    ap_CS_fsm_state4;
wire   [3:0] tmp_332_fu_490_p1;
reg   [3:0] tmp_332_reg_1173;
wire    ap_CS_fsm_state5;
reg   [31:0] midstate_0_reg_1182;
wire    ap_CS_fsm_state8;
wire    grp_sha256_transform_fu_361_ap_ready;
wire    grp_sha256_transform_fu_361_ap_done;
reg   [31:0] midstate_1_reg_1187;
reg   [31:0] midstate_2_reg_1192;
reg   [31:0] midstate_3_reg_1197;
reg   [31:0] midstate_4_reg_1202;
reg   [31:0] midstate_5_reg_1207;
reg   [31:0] midstate_6_reg_1212;
reg   [31:0] midstate_7_reg_1217;
wire   [31:0] tmp_71_fu_681_p2;
reg   [31:0] tmp_71_reg_1222;
wire    ap_CS_fsm_state9;
wire   [31:0] n_2_fu_746_p2;
reg   [31:0] n_2_reg_1302;
reg   [31:0] hash_0_reg_1309;
wire    ap_CS_fsm_state10;
wire    grp_sha256_transform_1_fu_333_ap_ready;
wire    grp_sha256_transform_1_fu_333_ap_done;
reg   [31:0] hash_1_reg_1314;
reg   [31:0] hash_2_reg_1319;
reg   [31:0] hash_3_reg_1324;
reg   [31:0] hash_4_reg_1329;
reg   [31:0] hash_5_reg_1334;
reg   [31:0] hash_6_reg_1339;
reg   [31:0] hash_7_reg_1344;
wire    grp_sha256_transform_1_fu_333_ap_start;
wire    grp_sha256_transform_1_fu_333_ap_idle;
wire   [31:0] grp_sha256_transform_1_fu_333_ap_return_0;
wire   [31:0] grp_sha256_transform_1_fu_333_ap_return_1;
wire   [31:0] grp_sha256_transform_1_fu_333_ap_return_2;
wire   [31:0] grp_sha256_transform_1_fu_333_ap_return_3;
wire   [31:0] grp_sha256_transform_1_fu_333_ap_return_4;
wire   [31:0] grp_sha256_transform_1_fu_333_ap_return_5;
wire   [31:0] grp_sha256_transform_1_fu_333_ap_return_6;
wire   [31:0] grp_sha256_transform_1_fu_333_ap_return_7;
wire    grp_sha256_transform_fu_361_ap_start;
wire    grp_sha256_transform_fu_361_ap_idle;
wire   [31:0] grp_sha256_transform_fu_361_ap_return_0;
wire   [31:0] grp_sha256_transform_fu_361_ap_return_1;
wire   [31:0] grp_sha256_transform_fu_361_ap_return_2;
wire   [31:0] grp_sha256_transform_fu_361_ap_return_3;
wire   [31:0] grp_sha256_transform_fu_361_ap_return_4;
wire   [31:0] grp_sha256_transform_fu_361_ap_return_5;
wire   [31:0] grp_sha256_transform_fu_361_ap_return_6;
wire   [31:0] grp_sha256_transform_fu_361_ap_return_7;
wire    grp_sha256_transform_16_fu_381_ap_start;
wire    grp_sha256_transform_16_fu_381_ap_done;
wire    grp_sha256_transform_16_fu_381_ap_idle;
wire    grp_sha256_transform_16_fu_381_ap_ready;
wire   [31:0] grp_sha256_transform_16_fu_381_ap_return;
reg   [4:0] i_reg_301;
wire    ap_CS_fsm_state7;
reg   [31:0] n1_reg_313;
wire    ap_CS_fsm_state11;
wire   [0:0] tmp_75_fu_846_p2;
wire   [0:0] tmp_76_fu_851_p2;
reg   [0:0] ap_phi_mux_p_0_phi_fu_325_p4;
reg    grp_sha256_transform_1_fu_333_ap_start_reg;
reg    grp_sha256_transform_fu_361_ap_start_reg;
reg    grp_sha256_transform_16_fu_381_ap_start_reg;
wire   [63:0] tmp_73_fu_417_p1;
reg   [31:0] data_15_fu_120;
reg   [31:0] data_15_1_fu_124;
reg   [31:0] data_15_2_fu_128;
reg   [31:0] data_15_3_fu_132;
reg   [31:0] data_15_4_fu_136;
reg   [31:0] data_15_5_fu_140;
reg   [31:0] data_15_6_fu_144;
reg   [31:0] data_15_7_fu_148;
reg   [31:0] data_15_8_fu_152;
reg   [31:0] data_15_9_fu_156;
reg   [31:0] data_15_10_fu_160;
reg   [31:0] data_15_11_fu_164;
reg   [31:0] data_15_12_fu_168;
reg   [31:0] data_15_13_fu_172;
reg   [31:0] data_15_14_fu_176;
reg   [31:0] upper_15_fu_180;
wire    ap_CS_fsm_state6;
reg   [31:0] upper_15_1_fu_184;
reg   [31:0] upper_15_2_fu_188;
reg   [31:0] upper_15_3_fu_192;
reg   [31:0] upper_15_4_fu_196;
reg   [31:0] upper_15_5_fu_200;
reg   [31:0] upper_15_6_fu_204;
reg   [31:0] upper_15_7_fu_208;
reg   [31:0] upper_15_8_fu_212;
reg   [31:0] upper_15_9_fu_216;
reg   [31:0] upper_15_10_fu_220;
reg   [31:0] upper_15_11_fu_224;
reg   [31:0] upper_15_12_fu_228;
reg   [31:0] upper_15_13_fu_232;
reg   [31:0] upper_15_14_fu_236;
reg   [31:0] upper_15_15_fu_240;
wire   [4:0] tmp_72_fu_411_p2;
wire   [7:0] tmp_333_fu_800_p1;
wire   [7:0] v_1_i_fu_814_p4;
wire   [7:0] v_2_i_fu_824_p4;
wire   [7:0] v_3_i_fu_804_p4;
wire   [31:0] high_fu_834_p5;
reg   [10:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_sha256_transform_1_fu_333_ap_start_reg = 1'b0;
#0 grp_sha256_transform_fu_361_ap_start_reg = 1'b0;
#0 grp_sha256_transform_16_fu_381_ap_start_reg = 1'b0;
end

scanhash_sha256d_CTRL_BUS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CTRL_BUS_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CTRL_BUS_DATA_WIDTH ))
scanhash_sha256d_CTRL_BUS_s_axi_U(
    .AWVALID(s_axi_CTRL_BUS_AWVALID),
    .AWREADY(s_axi_CTRL_BUS_AWREADY),
    .AWADDR(s_axi_CTRL_BUS_AWADDR),
    .WVALID(s_axi_CTRL_BUS_WVALID),
    .WREADY(s_axi_CTRL_BUS_WREADY),
    .WDATA(s_axi_CTRL_BUS_WDATA),
    .WSTRB(s_axi_CTRL_BUS_WSTRB),
    .ARVALID(s_axi_CTRL_BUS_ARVALID),
    .ARREADY(s_axi_CTRL_BUS_ARREADY),
    .ARADDR(s_axi_CTRL_BUS_ARADDR),
    .RVALID(s_axi_CTRL_BUS_RVALID),
    .RREADY(s_axi_CTRL_BUS_RREADY),
    .RDATA(s_axi_CTRL_BUS_RDATA),
    .RRESP(s_axi_CTRL_BUS_RRESP),
    .BVALID(s_axi_CTRL_BUS_BVALID),
    .BREADY(s_axi_CTRL_BUS_BREADY),
    .BRESP(s_axi_CTRL_BUS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_return(ap_return),
    .work_address0(work_address0),
    .work_ce0(work_ce0),
    .work_we0(work_we0),
    .work_d0(n_2_fu_746_p2),
    .work_q0(work_q0),
    .target_address0(target_address0),
    .target_ce0(target_ce0),
    .target_q0(target_q0),
    .max_nonce(max_nonce),
    .num_hashes(num_hashes),
    .num_hashes_ap_vld(num_hashes_ap_vld)
);

sha256_transform_1 grp_sha256_transform_1_fu_333(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_sha256_transform_1_fu_333_ap_start),
    .ap_done(grp_sha256_transform_1_fu_333_ap_done),
    .ap_idle(grp_sha256_transform_1_fu_333_ap_idle),
    .ap_ready(grp_sha256_transform_1_fu_333_ap_ready),
    .state_0_read(midstate_0_reg_1182),
    .state_1_read(midstate_1_reg_1187),
    .state_2_read(midstate_2_reg_1192),
    .state_3_read(midstate_3_reg_1197),
    .state_4_read(midstate_4_reg_1202),
    .state_5_read(midstate_5_reg_1207),
    .state_6_read(midstate_6_reg_1212),
    .state_7_read(midstate_7_reg_1217),
    .block_0_read(data_15_fu_120),
    .block_1_read(data_15_1_fu_124),
    .block_2_read(data_15_2_fu_128),
    .block_3_read(n_2_reg_1302),
    .block_4_read(data_15_3_fu_132),
    .block_5_read(data_15_4_fu_136),
    .block_6_read(data_15_5_fu_140),
    .block_7_read(data_15_6_fu_144),
    .block_8_read(data_15_7_fu_148),
    .block_9_read(data_15_8_fu_152),
    .block_10_read(data_15_9_fu_156),
    .block_11_read(data_15_10_fu_160),
    .block_12_read(data_15_11_fu_164),
    .block_13_read(data_15_12_fu_168),
    .block_14_read(data_15_13_fu_172),
    .block_15_read(data_15_14_fu_176),
    .ap_return_0(grp_sha256_transform_1_fu_333_ap_return_0),
    .ap_return_1(grp_sha256_transform_1_fu_333_ap_return_1),
    .ap_return_2(grp_sha256_transform_1_fu_333_ap_return_2),
    .ap_return_3(grp_sha256_transform_1_fu_333_ap_return_3),
    .ap_return_4(grp_sha256_transform_1_fu_333_ap_return_4),
    .ap_return_5(grp_sha256_transform_1_fu_333_ap_return_5),
    .ap_return_6(grp_sha256_transform_1_fu_333_ap_return_6),
    .ap_return_7(grp_sha256_transform_1_fu_333_ap_return_7)
);

sha256_transform grp_sha256_transform_fu_361(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_sha256_transform_fu_361_ap_start),
    .ap_done(grp_sha256_transform_fu_361_ap_done),
    .ap_idle(grp_sha256_transform_fu_361_ap_idle),
    .ap_ready(grp_sha256_transform_fu_361_ap_ready),
    .block_0_read(upper_15_14_fu_236),
    .block_1_read(upper_15_15_fu_240),
    .block_2_read(upper_15_13_fu_232),
    .block_3_read(upper_15_12_fu_228),
    .block_4_read(upper_15_11_fu_224),
    .block_5_read(upper_15_10_fu_220),
    .block_6_read(upper_15_9_fu_216),
    .block_7_read(upper_15_8_fu_212),
    .block_8_read(upper_15_7_fu_208),
    .block_9_read(upper_15_6_fu_204),
    .block_10_read(upper_15_5_fu_200),
    .block_11_read(upper_15_4_fu_196),
    .block_12_read(upper_15_3_fu_192),
    .block_13_read(upper_15_2_fu_188),
    .block_14_read(upper_15_1_fu_184),
    .block_15_read(upper_15_fu_180),
    .ap_return_0(grp_sha256_transform_fu_361_ap_return_0),
    .ap_return_1(grp_sha256_transform_fu_361_ap_return_1),
    .ap_return_2(grp_sha256_transform_fu_361_ap_return_2),
    .ap_return_3(grp_sha256_transform_fu_361_ap_return_3),
    .ap_return_4(grp_sha256_transform_fu_361_ap_return_4),
    .ap_return_5(grp_sha256_transform_fu_361_ap_return_5),
    .ap_return_6(grp_sha256_transform_fu_361_ap_return_6),
    .ap_return_7(grp_sha256_transform_fu_361_ap_return_7)
);

sha256_transform_16 grp_sha256_transform_16_fu_381(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_sha256_transform_16_fu_381_ap_start),
    .ap_done(grp_sha256_transform_16_fu_381_ap_done),
    .ap_idle(grp_sha256_transform_16_fu_381_ap_idle),
    .ap_ready(grp_sha256_transform_16_fu_381_ap_ready),
    .block_0_read(hash_0_reg_1309),
    .block_1_read(hash_1_reg_1314),
    .block_2_read(hash_2_reg_1319),
    .block_3_read(hash_3_reg_1324),
    .block_4_read(hash_4_reg_1329),
    .block_5_read(hash_5_reg_1334),
    .block_6_read(hash_6_reg_1339),
    .block_7_read(hash_7_reg_1344),
    .ap_return(grp_sha256_transform_16_fu_381_ap_return)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_sha256_transform_16_fu_381_ap_start_reg <= 1'b0;
    end else begin
        if (((grp_sha256_transform_1_fu_333_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
            grp_sha256_transform_16_fu_381_ap_start_reg <= 1'b1;
        end else if ((grp_sha256_transform_16_fu_381_ap_ready == 1'b1)) begin
            grp_sha256_transform_16_fu_381_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_sha256_transform_1_fu_333_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_sha256_transform_1_fu_333_ap_start_reg <= 1'b1;
        end else if ((grp_sha256_transform_1_fu_333_ap_ready == 1'b1)) begin
            grp_sha256_transform_1_fu_333_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_sha256_transform_fu_361_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (exitcond_fu_399_p2 == 1'd1))) begin
            grp_sha256_transform_fu_361_ap_start_reg <= 1'b1;
        end else if ((grp_sha256_transform_fu_361_ap_ready == 1'b1)) begin
            grp_sha256_transform_fu_361_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_reg_301 <= i_1_reg_1078;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_301 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_sha256_transform_16_fu_381_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11) & (tmp_76_fu_851_p2 == 1'd1) & (tmp_75_fu_846_p2 == 1'd1))) begin
        n1_reg_313 <= n_2_reg_1302;
    end else if (((1'b1 == ap_CS_fsm_state8) & (grp_sha256_transform_fu_361_ap_done == 1'b1))) begin
        n1_reg_313 <= n_reg_1070;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        Htarg_reg_1065 <= target_q0;
        first_nonce_reg_1060 <= work_q0;
        max_nonce_read_reg_1055 <= max_nonce;
        n_reg_1070 <= n_fu_393_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd11))) begin
        data_15_10_fu_160 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd12))) begin
        data_15_11_fu_164 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd13))) begin
        data_15_12_fu_168 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd14))) begin
        data_15_13_fu_172 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd15))) begin
        data_15_14_fu_176 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd1))) begin
        data_15_1_fu_124 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd2))) begin
        data_15_2_fu_128 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd4))) begin
        data_15_3_fu_132 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd5))) begin
        data_15_4_fu_136 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd6))) begin
        data_15_5_fu_140 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd7))) begin
        data_15_6_fu_144 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd8))) begin
        data_15_7_fu_148 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd9))) begin
        data_15_8_fu_152 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd10))) begin
        data_15_9_fu_156 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_332_fu_490_p1 == 4'd0))) begin
        data_15_fu_120 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_sha256_transform_1_fu_333_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        hash_0_reg_1309 <= grp_sha256_transform_1_fu_333_ap_return_0;
        hash_1_reg_1314 <= grp_sha256_transform_1_fu_333_ap_return_1;
        hash_2_reg_1319 <= grp_sha256_transform_1_fu_333_ap_return_2;
        hash_3_reg_1324 <= grp_sha256_transform_1_fu_333_ap_return_3;
        hash_4_reg_1329 <= grp_sha256_transform_1_fu_333_ap_return_4;
        hash_5_reg_1334 <= grp_sha256_transform_1_fu_333_ap_return_5;
        hash_6_reg_1339 <= grp_sha256_transform_1_fu_333_ap_return_6;
        hash_7_reg_1344 <= grp_sha256_transform_1_fu_333_ap_return_7;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_1_reg_1078 <= i_1_fu_405_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (grp_sha256_transform_fu_361_ap_done == 1'b1))) begin
        midstate_0_reg_1182 <= grp_sha256_transform_fu_361_ap_return_0;
        midstate_1_reg_1187 <= grp_sha256_transform_fu_361_ap_return_1;
        midstate_2_reg_1192 <= grp_sha256_transform_fu_361_ap_return_2;
        midstate_3_reg_1197 <= grp_sha256_transform_fu_361_ap_return_3;
        midstate_4_reg_1202 <= grp_sha256_transform_fu_361_ap_return_4;
        midstate_5_reg_1207 <= grp_sha256_transform_fu_361_ap_return_5;
        midstate_6_reg_1212 <= grp_sha256_transform_fu_361_ap_return_6;
        midstate_7_reg_1217 <= grp_sha256_transform_fu_361_ap_return_7;
        tmp_71_reg_1222 <= tmp_71_fu_681_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        n_2_reg_1302 <= n_2_fu_746_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_332_reg_1173 <= tmp_332_fu_490_p1;
        tmp_74_reg_1168[4 : 0] <= tmp_74_fu_486_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd5))) begin
        upper_15_10_fu_220 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd4))) begin
        upper_15_11_fu_224 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd3))) begin
        upper_15_12_fu_228 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd2))) begin
        upper_15_13_fu_232 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd0))) begin
        upper_15_14_fu_236 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd1))) begin
        upper_15_15_fu_240 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd14))) begin
        upper_15_1_fu_184 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd13))) begin
        upper_15_2_fu_188 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd12))) begin
        upper_15_3_fu_192 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd11))) begin
        upper_15_4_fu_196 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd10))) begin
        upper_15_5_fu_200 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd9))) begin
        upper_15_6_fu_204 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd8))) begin
        upper_15_7_fu_208 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd7))) begin
        upper_15_8_fu_212 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd6))) begin
        upper_15_9_fu_216 <= work_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_332_reg_1173 == 4'd15))) begin
        upper_15_fu_180 <= work_q0;
    end
end

always @ (*) begin
    if (((grp_sha256_transform_16_fu_381_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11) & ((tmp_76_fu_851_p2 == 1'd0) | (tmp_75_fu_846_p2 == 1'd0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        if (((tmp_75_fu_846_p2 == 1'd1) & (tmp_76_fu_851_p2 == 1'd0))) begin
            ap_phi_mux_p_0_phi_fu_325_p4 = 1'd0;
        end else if ((tmp_75_fu_846_p2 == 1'd0)) begin
            ap_phi_mux_p_0_phi_fu_325_p4 = 1'd1;
        end else begin
            ap_phi_mux_p_0_phi_fu_325_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_p_0_phi_fu_325_p4 = 'bx;
    end
end

always @ (*) begin
    if (((grp_sha256_transform_16_fu_381_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11) & ((tmp_76_fu_851_p2 == 1'd0) | (tmp_75_fu_846_p2 == 1'd0)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        num_hashes_ap_vld = 1'b1;
    end else begin
        num_hashes_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        target_ce0 = 1'b1;
    end else begin
        target_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        work_address0 = work_addr_reg_1045;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        work_address0 = tmp_74_reg_1168;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        work_address0 = tmp_73_fu_417_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        work_address0 = 64'd19;
    end else begin
        work_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        work_ce0 = 1'b1;
    end else begin
        work_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        work_we0 = 1'b1;
    end else begin
        work_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond_fu_399_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_sha256_transform_fu_361_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_sha256_transform_1_fu_333_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((grp_sha256_transform_16_fu_381_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11) & ((tmp_76_fu_851_p2 == 1'd0) | (tmp_75_fu_846_p2 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((grp_sha256_transform_16_fu_381_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11) & (tmp_76_fu_851_p2 == 1'd1) & (tmp_75_fu_846_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_return = ap_phi_mux_p_0_phi_fu_325_p4;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign exitcond_fu_399_p2 = ((i_reg_301 == 5'd16) ? 1'b1 : 1'b0);

assign grp_sha256_transform_16_fu_381_ap_start = grp_sha256_transform_16_fu_381_ap_start_reg;

assign grp_sha256_transform_1_fu_333_ap_start = grp_sha256_transform_1_fu_333_ap_start_reg;

assign grp_sha256_transform_fu_361_ap_start = grp_sha256_transform_fu_361_ap_start_reg;

assign high_fu_834_p5 = {{{{tmp_333_fu_800_p1}, {v_1_i_fu_814_p4}}, {v_2_i_fu_824_p4}}, {v_3_i_fu_804_p4}};

assign i_1_fu_405_p2 = (i_reg_301 + 5'd1);

assign n_2_fu_746_p2 = (32'd1 + n1_reg_313);

assign n_fu_393_p2 = ($signed(work_q0) + $signed(32'd4294967295));

assign num_hashes = (n_2_fu_746_p2 + tmp_71_reg_1222);

assign target_address0 = 64'd7;

assign tmp_332_fu_490_p1 = i_reg_301[3:0];

assign tmp_333_fu_800_p1 = grp_sha256_transform_16_fu_381_ap_return[7:0];

assign tmp_71_fu_681_p2 = (32'd1 - first_nonce_reg_1060);

assign tmp_72_fu_411_p2 = (i_reg_301 ^ 5'd16);

assign tmp_73_fu_417_p1 = tmp_72_fu_411_p2;

assign tmp_74_fu_486_p1 = i_reg_301;

assign tmp_75_fu_846_p2 = ((high_fu_834_p5 > Htarg_reg_1065) ? 1'b1 : 1'b0);

assign tmp_76_fu_851_p2 = ((n_2_reg_1302 < max_nonce_read_reg_1055) ? 1'b1 : 1'b0);

assign v_1_i_fu_814_p4 = {{grp_sha256_transform_16_fu_381_ap_return[15:8]}};

assign v_2_i_fu_824_p4 = {{grp_sha256_transform_16_fu_381_ap_return[23:16]}};

assign v_3_i_fu_804_p4 = {{grp_sha256_transform_16_fu_381_ap_return[31:24]}};

assign work_addr_reg_1045 = 64'd19;

always @ (posedge ap_clk) begin
    tmp_74_reg_1168[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end

endmodule //scanhash_sha256d
