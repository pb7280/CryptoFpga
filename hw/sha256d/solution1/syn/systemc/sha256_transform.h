// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _sha256_transform_HH_
#define _sha256_transform_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "scanhash_sha256d_bkb.h"
#include "scanhash_sha256d_cud.h"

namespace ap_rtl {

struct sha256_transform : public sc_module {
    // Port declarations 30
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > block_0_read;
    sc_in< sc_lv<32> > block_1_read;
    sc_in< sc_lv<32> > block_2_read;
    sc_in< sc_lv<32> > block_3_read;
    sc_in< sc_lv<32> > block_4_read;
    sc_in< sc_lv<32> > block_5_read;
    sc_in< sc_lv<32> > block_6_read;
    sc_in< sc_lv<32> > block_7_read;
    sc_in< sc_lv<32> > block_8_read;
    sc_in< sc_lv<32> > block_9_read;
    sc_in< sc_lv<32> > block_10_read;
    sc_in< sc_lv<32> > block_11_read;
    sc_in< sc_lv<32> > block_12_read;
    sc_in< sc_lv<32> > block_13_read;
    sc_in< sc_lv<32> > block_14_read;
    sc_in< sc_lv<32> > block_15_read;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_out< sc_lv<32> > ap_return_2;
    sc_out< sc_lv<32> > ap_return_3;
    sc_out< sc_lv<32> > ap_return_4;
    sc_out< sc_lv<32> > ap_return_5;
    sc_out< sc_lv<32> > ap_return_6;
    sc_out< sc_lv<32> > ap_return_7;
    sc_signal< sc_lv<32> > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<32> > ap_var_for_const2;
    sc_signal< sc_lv<32> > ap_var_for_const3;
    sc_signal< sc_lv<32> > ap_var_for_const4;
    sc_signal< sc_lv<32> > ap_var_for_const5;
    sc_signal< sc_lv<32> > ap_var_for_const6;
    sc_signal< sc_lv<32> > ap_var_for_const7;
    sc_signal< sc_lv<32> > ap_var_for_const8;
    sc_signal< sc_lv<32> > ap_var_for_const9;
    sc_signal< sc_lv<32> > ap_var_for_const10;
    sc_signal< sc_lv<32> > ap_var_for_const11;
    sc_signal< sc_lv<32> > ap_var_for_const12;
    sc_signal< sc_lv<32> > ap_var_for_const13;
    sc_signal< sc_lv<32> > ap_var_for_const14;
    sc_signal< sc_lv<32> > ap_var_for_const15;
    sc_signal< sc_lv<32> > ap_var_for_const16;
    sc_signal< sc_lv<32> > ap_var_for_const17;
    sc_signal< sc_lv<32> > ap_var_for_const18;
    sc_signal< sc_lv<32> > ap_var_for_const19;
    sc_signal< sc_lv<32> > ap_var_for_const20;
    sc_signal< sc_lv<32> > ap_var_for_const21;
    sc_signal< sc_lv<32> > ap_var_for_const22;
    sc_signal< sc_lv<32> > ap_var_for_const23;
    sc_signal< sc_lv<32> > ap_var_for_const24;
    sc_signal< sc_lv<32> > ap_var_for_const25;
    sc_signal< sc_lv<32> > ap_var_for_const26;
    sc_signal< sc_lv<32> > ap_var_for_const27;
    sc_signal< sc_lv<32> > ap_var_for_const28;
    sc_signal< sc_lv<32> > ap_var_for_const29;
    sc_signal< sc_lv<32> > ap_var_for_const30;
    sc_signal< sc_lv<32> > ap_var_for_const31;
    sc_signal< sc_lv<32> > ap_var_for_const32;
    sc_signal< sc_lv<32> > ap_var_for_const33;
    sc_signal< sc_lv<32> > ap_var_for_const34;
    sc_signal< sc_lv<32> > ap_var_for_const35;
    sc_signal< sc_lv<32> > ap_var_for_const36;
    sc_signal< sc_lv<32> > ap_var_for_const37;
    sc_signal< sc_lv<32> > ap_var_for_const38;
    sc_signal< sc_lv<32> > ap_var_for_const39;
    sc_signal< sc_lv<32> > ap_var_for_const40;
    sc_signal< sc_lv<32> > ap_var_for_const41;
    sc_signal< sc_lv<32> > ap_var_for_const42;
    sc_signal< sc_lv<32> > ap_var_for_const43;
    sc_signal< sc_lv<32> > ap_var_for_const44;
    sc_signal< sc_lv<32> > ap_var_for_const45;
    sc_signal< sc_lv<32> > ap_var_for_const46;
    sc_signal< sc_lv<32> > ap_var_for_const47;
    sc_signal< sc_lv<32> > ap_var_for_const48;
    sc_signal< sc_lv<32> > ap_var_for_const49;
    sc_signal< sc_lv<32> > ap_var_for_const50;
    sc_signal< sc_lv<32> > ap_var_for_const51;
    sc_signal< sc_lv<32> > ap_var_for_const52;
    sc_signal< sc_lv<32> > ap_var_for_const53;
    sc_signal< sc_lv<32> > ap_var_for_const54;
    sc_signal< sc_lv<32> > ap_var_for_const55;
    sc_signal< sc_lv<32> > ap_var_for_const56;
    sc_signal< sc_lv<32> > ap_var_for_const57;
    sc_signal< sc_lv<32> > ap_var_for_const58;
    sc_signal< sc_lv<32> > ap_var_for_const59;
    sc_signal< sc_lv<32> > ap_var_for_const60;
    sc_signal< sc_lv<32> > ap_var_for_const61;
    sc_signal< sc_lv<32> > ap_var_for_const62;
    sc_signal< sc_lv<32> > ap_var_for_const63;


    // Module declarations
    sha256_transform(sc_module_name name);
    SC_HAS_PROCESS(sha256_transform);

    ~sha256_transform();

    sc_trace_file* mVcdFile;

    scanhash_sha256d_bkb<1,1,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,6,32>* scanhash_sha256d_bkb_U1;
    scanhash_sha256d_bkb<1,1,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,6,32>* scanhash_sha256d_bkb_U2;
    scanhash_sha256d_bkb<1,1,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,6,32>* scanhash_sha256d_bkb_U3;
    scanhash_sha256d_cud<1,1,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,4,32>* scanhash_sha256d_cud_U4;
    scanhash_sha256d_bkb<1,1,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,6,32>* scanhash_sha256d_bkb_U5;
    scanhash_sha256d_bkb<1,1,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,6,32>* scanhash_sha256d_bkb_U6;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > i_1_fu_1203_p2;
    sc_signal< sc_lv<7> > i_1_reg_3216;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > tmp_53_fu_2331_p2;
    sc_signal< sc_lv<32> > tmp_53_reg_3230;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > tmp_36_fu_2341_p66;
    sc_signal< sc_lv<32> > tmp_36_reg_3235;
    sc_signal< sc_lv<32> > tmp25_fu_2615_p2;
    sc_signal< sc_lv<32> > tmp25_reg_3240;
    sc_signal< sc_lv<32> > tmp_s_fu_2639_p2;
    sc_signal< sc_lv<32> > tmp_s_reg_3245;
    sc_signal< sc_lv<32> > e_fu_2732_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > a_fu_2743_p2;
    sc_signal< sc_lv<32> > c_reg_748;
    sc_signal< sc_lv<32> > b_reg_760;
    sc_signal< sc_lv<7> > i_reg_773;
    sc_signal< sc_lv<32> > d_reg_785;
    sc_signal< sc_lv<32> > d1_reg_798;
    sc_signal< sc_lv<32> > f_reg_811;
    sc_signal< sc_lv<32> > g_reg_823;
    sc_signal< sc_lv<32> > h_reg_836;
    sc_signal< sc_lv<32> > h1_reg_849;
    sc_signal< sc_lv<32> > ap_phi_mux_W_load_phi_phi_fu_865_p96;
    sc_signal< sc_lv<1> > exitcond_fu_1197_p2;
    sc_signal< sc_lv<1> > icmp_fu_1219_p2;
    sc_signal< sc_lv<6> > tmp_82_fu_1225_p1;
    sc_signal< sc_lv<32> > W_15_fu_396;
    sc_signal< sc_lv<32> > W_0_fu_2033_p18;
    sc_signal< sc_lv<6> > tmp_80_fu_2055_p1;
    sc_signal< sc_lv<32> > W_15_33_fu_400;
    sc_signal< sc_lv<32> > W_63_fu_404;
    sc_signal< sc_lv<32> > W_16_fu_1783_p2;
    sc_signal< sc_lv<32> > W_63_97_fu_408;
    sc_signal< sc_lv<32> > W_63_98_fu_412;
    sc_signal< sc_lv<32> > W_63_99_fu_416;
    sc_signal< sc_lv<32> > W_63_100_fu_420;
    sc_signal< sc_lv<32> > W_63_101_fu_424;
    sc_signal< sc_lv<32> > W_63_102_fu_428;
    sc_signal< sc_lv<32> > W_63_103_fu_432;
    sc_signal< sc_lv<32> > W_63_104_fu_436;
    sc_signal< sc_lv<32> > W_63_105_fu_440;
    sc_signal< sc_lv<32> > W_63_106_fu_444;
    sc_signal< sc_lv<32> > W_63_107_fu_448;
    sc_signal< sc_lv<32> > W_63_108_fu_452;
    sc_signal< sc_lv<32> > W_63_109_fu_456;
    sc_signal< sc_lv<32> > W_63_110_fu_460;
    sc_signal< sc_lv<32> > W_63_111_fu_464;
    sc_signal< sc_lv<32> > W_63_112_fu_468;
    sc_signal< sc_lv<32> > W_63_113_fu_472;
    sc_signal< sc_lv<32> > W_63_114_fu_476;
    sc_signal< sc_lv<32> > W_63_115_fu_480;
    sc_signal< sc_lv<32> > W_63_116_fu_484;
    sc_signal< sc_lv<32> > W_63_117_fu_488;
    sc_signal< sc_lv<32> > W_63_118_fu_492;
    sc_signal< sc_lv<32> > W_63_119_fu_496;
    sc_signal< sc_lv<32> > W_63_120_fu_500;
    sc_signal< sc_lv<32> > W_63_121_fu_504;
    sc_signal< sc_lv<32> > W_63_122_fu_508;
    sc_signal< sc_lv<32> > W_63_123_fu_512;
    sc_signal< sc_lv<32> > W_63_124_fu_516;
    sc_signal< sc_lv<32> > W_63_125_fu_520;
    sc_signal< sc_lv<32> > W_63_126_fu_524;
    sc_signal< sc_lv<32> > W_63_127_fu_528;
    sc_signal< sc_lv<32> > W_63_128_fu_532;
    sc_signal< sc_lv<32> > W_63_129_fu_536;
    sc_signal< sc_lv<32> > W_63_130_fu_540;
    sc_signal< sc_lv<32> > W_63_131_fu_544;
    sc_signal< sc_lv<32> > W_63_132_fu_548;
    sc_signal< sc_lv<32> > W_63_133_fu_552;
    sc_signal< sc_lv<32> > W_63_134_fu_556;
    sc_signal< sc_lv<32> > W_63_135_fu_560;
    sc_signal< sc_lv<32> > W_63_136_fu_564;
    sc_signal< sc_lv<32> > W_63_137_fu_568;
    sc_signal< sc_lv<32> > W_63_138_fu_572;
    sc_signal< sc_lv<32> > W_63_139_fu_576;
    sc_signal< sc_lv<32> > W_63_140_fu_580;
    sc_signal< sc_lv<32> > W_63_141_fu_584;
    sc_signal< sc_lv<32> > W_15_34_fu_588;
    sc_signal< sc_lv<32> > W_15_35_fu_592;
    sc_signal< sc_lv<32> > W_15_36_fu_596;
    sc_signal< sc_lv<32> > W_15_37_fu_600;
    sc_signal< sc_lv<32> > W_15_38_fu_604;
    sc_signal< sc_lv<32> > W_15_39_fu_608;
    sc_signal< sc_lv<32> > W_15_40_fu_612;
    sc_signal< sc_lv<32> > W_15_41_fu_616;
    sc_signal< sc_lv<32> > W_15_42_fu_620;
    sc_signal< sc_lv<32> > W_15_43_fu_624;
    sc_signal< sc_lv<32> > W_15_44_fu_628;
    sc_signal< sc_lv<32> > W_15_45_fu_632;
    sc_signal< sc_lv<32> > W_15_46_fu_636;
    sc_signal< sc_lv<32> > W_15_47_fu_640;
    sc_signal< sc_lv<32> > W_63_142_fu_644;
    sc_signal< sc_lv<32> > W_63_143_fu_648;
    sc_signal< sc_lv<3> > tmp_fu_1209_p4;
    sc_signal< sc_lv<17> > tmp_83_fu_1239_p1;
    sc_signal< sc_lv<15> > tmp_12_fu_1229_p4;
    sc_signal< sc_lv<19> > tmp_84_fu_1261_p1;
    sc_signal< sc_lv<13> > tmp_15_fu_1251_p4;
    sc_signal< sc_lv<22> > tmp_18_fu_1273_p4;
    sc_signal< sc_lv<32> > tmp_67_fu_1283_p1;
    sc_signal< sc_lv<32> > tmp_17_fu_1265_p3;
    sc_signal< sc_lv<32> > tmp16_fu_1287_p2;
    sc_signal< sc_lv<32> > tmp_14_fu_1243_p3;
    sc_signal< sc_lv<32> > W_load_2_phi_fu_1433_p66;
    sc_signal< sc_lv<7> > tmp_85_fu_1577_p1;
    sc_signal< sc_lv<25> > tmp_25_fu_1567_p4;
    sc_signal< sc_lv<18> > tmp_86_fu_1599_p1;
    sc_signal< sc_lv<14> > tmp_28_fu_1589_p4;
    sc_signal< sc_lv<29> > tmp_31_fu_1611_p4;
    sc_signal< sc_lv<32> > tmp_72_fu_1621_p1;
    sc_signal< sc_lv<32> > tmp_30_fu_1603_p3;
    sc_signal< sc_lv<32> > tmp17_fu_1625_p2;
    sc_signal< sc_lv<32> > tmp_27_fu_1581_p3;
    sc_signal< sc_lv<32> > tmp_33_fu_1631_p2;
    sc_signal< sc_lv<32> > W_load_1_phi_fu_1299_p66;
    sc_signal< sc_lv<32> > W_load_3_phi_fu_1637_p66;
    sc_signal< sc_lv<32> > tmp_20_fu_1293_p2;
    sc_signal< sc_lv<32> > tmp19_fu_1771_p2;
    sc_signal< sc_lv<32> > tmp20_fu_1777_p2;
    sc_signal< sc_lv<4> > W_0_fu_2033_p17;
    sc_signal< sc_lv<32> > out_state_0_write_a_fu_2139_p2;
    sc_signal< sc_lv<32> > out_state_1_write_a_fu_2145_p2;
    sc_signal< sc_lv<32> > out_state_2_write_a_fu_2151_p2;
    sc_signal< sc_lv<32> > out_state_3_write_a_fu_2157_p2;
    sc_signal< sc_lv<32> > out_state_4_write_a_fu_2163_p2;
    sc_signal< sc_lv<32> > out_state_5_write_a_fu_2169_p2;
    sc_signal< sc_lv<32> > out_state_6_write_a_fu_2175_p2;
    sc_signal< sc_lv<32> > out_state_7_write_a_fu_2181_p2;
    sc_signal< sc_lv<6> > tmp_87_fu_2251_p1;
    sc_signal< sc_lv<26> > tmp_40_fu_2241_p4;
    sc_signal< sc_lv<11> > tmp_88_fu_2273_p1;
    sc_signal< sc_lv<21> > tmp_43_fu_2263_p4;
    sc_signal< sc_lv<25> > tmp_89_fu_2295_p1;
    sc_signal< sc_lv<7> > tmp_46_fu_2285_p4;
    sc_signal< sc_lv<32> > tmp_42_fu_2255_p3;
    sc_signal< sc_lv<32> > tmp_45_fu_2277_p3;
    sc_signal< sc_lv<32> > tmp21_fu_2307_p2;
    sc_signal< sc_lv<32> > tmp_48_fu_2299_p3;
    sc_signal< sc_lv<32> > tmp_51_fu_2319_p2;
    sc_signal< sc_lv<32> > tmp_52_fu_2325_p2;
    sc_signal< sc_lv<6> > tmp_90_fu_2337_p1;
    sc_signal< sc_lv<32> > tmp_37_fu_2475_p66;
    sc_signal< sc_lv<32> > tmp26_fu_2609_p2;
    sc_signal< sc_lv<32> > tmp_50_fu_2313_p2;
    sc_signal< sc_lv<32> > tmp_69_fu_2621_p2;
    sc_signal< sc_lv<32> > tmp_70_fu_2627_p2;
    sc_signal< sc_lv<32> > tmp_71_fu_2633_p2;
    sc_signal< sc_lv<32> > tmp24_fu_2645_p2;
    sc_signal< sc_lv<2> > tmp_91_fu_2664_p1;
    sc_signal< sc_lv<30> > tmp_58_fu_2654_p4;
    sc_signal< sc_lv<13> > tmp_92_fu_2686_p1;
    sc_signal< sc_lv<19> > tmp_61_fu_2676_p4;
    sc_signal< sc_lv<22> > tmp_93_fu_2708_p1;
    sc_signal< sc_lv<10> > tmp_64_fu_2698_p4;
    sc_signal< sc_lv<32> > tmp_60_fu_2668_p3;
    sc_signal< sc_lv<32> > tmp_63_fu_2690_p3;
    sc_signal< sc_lv<32> > tmp27_fu_2720_p2;
    sc_signal< sc_lv<32> > tmp_66_fu_2712_p3;
    sc_signal< sc_lv<32> > t0_fu_2649_p2;
    sc_signal< sc_lv<32> > tmp28_fu_2738_p2;
    sc_signal< sc_lv<32> > tmp_68_fu_2726_p2;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<32> > ap_return_1_preg;
    sc_signal< sc_lv<32> > ap_return_2_preg;
    sc_signal< sc_lv<32> > ap_return_3_preg;
    sc_signal< sc_lv<32> > ap_return_4_preg;
    sc_signal< sc_lv<32> > ap_return_5_preg;
    sc_signal< sc_lv<32> > ap_return_6_preg;
    sc_signal< sc_lv<32> > ap_return_7_preg;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< bool > ap_condition_1789;
    sc_signal< bool > ap_condition_698;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_BB67AE85;
    static const sc_lv<32> ap_const_lv32_6A09E667;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_3C6EF372;
    static const sc_lv<32> ap_const_lv32_A54FF53A;
    static const sc_lv<32> ap_const_lv32_510E527F;
    static const sc_lv<32> ap_const_lv32_9B05688C;
    static const sc_lv<32> ap_const_lv32_1F83D9AB;
    static const sc_lv<32> ap_const_lv32_5BE0CD19;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<6> ap_const_lv6_11;
    static const sc_lv<6> ap_const_lv6_12;
    static const sc_lv<6> ap_const_lv6_13;
    static const sc_lv<6> ap_const_lv6_14;
    static const sc_lv<6> ap_const_lv6_15;
    static const sc_lv<6> ap_const_lv6_16;
    static const sc_lv<6> ap_const_lv6_17;
    static const sc_lv<6> ap_const_lv6_18;
    static const sc_lv<6> ap_const_lv6_19;
    static const sc_lv<6> ap_const_lv6_1A;
    static const sc_lv<6> ap_const_lv6_1B;
    static const sc_lv<6> ap_const_lv6_1C;
    static const sc_lv<6> ap_const_lv6_1D;
    static const sc_lv<6> ap_const_lv6_1E;
    static const sc_lv<6> ap_const_lv6_1F;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_21;
    static const sc_lv<6> ap_const_lv6_22;
    static const sc_lv<6> ap_const_lv6_23;
    static const sc_lv<6> ap_const_lv6_24;
    static const sc_lv<6> ap_const_lv6_25;
    static const sc_lv<6> ap_const_lv6_26;
    static const sc_lv<6> ap_const_lv6_27;
    static const sc_lv<6> ap_const_lv6_28;
    static const sc_lv<6> ap_const_lv6_29;
    static const sc_lv<6> ap_const_lv6_2A;
    static const sc_lv<6> ap_const_lv6_2B;
    static const sc_lv<6> ap_const_lv6_2C;
    static const sc_lv<6> ap_const_lv6_2D;
    static const sc_lv<6> ap_const_lv6_2E;
    static const sc_lv<6> ap_const_lv6_2F;
    static const sc_lv<6> ap_const_lv6_30;
    static const sc_lv<6> ap_const_lv6_31;
    static const sc_lv<6> ap_const_lv6_32;
    static const sc_lv<6> ap_const_lv6_33;
    static const sc_lv<6> ap_const_lv6_34;
    static const sc_lv<6> ap_const_lv6_35;
    static const sc_lv<6> ap_const_lv6_36;
    static const sc_lv<6> ap_const_lv6_37;
    static const sc_lv<6> ap_const_lv6_38;
    static const sc_lv<6> ap_const_lv6_39;
    static const sc_lv<6> ap_const_lv6_3A;
    static const sc_lv<6> ap_const_lv6_3B;
    static const sc_lv<6> ap_const_lv6_3C;
    static const sc_lv<6> ap_const_lv6_3D;
    static const sc_lv<6> ap_const_lv6_3E;
    static const sc_lv<6> ap_const_lv6_10;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<6> ap_const_lv6_E;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_2;
    static const sc_lv<6> ap_const_lv6_3;
    static const sc_lv<6> ap_const_lv6_4;
    static const sc_lv<6> ap_const_lv6_5;
    static const sc_lv<6> ap_const_lv6_6;
    static const sc_lv<6> ap_const_lv6_7;
    static const sc_lv<6> ap_const_lv6_8;
    static const sc_lv<6> ap_const_lv6_9;
    static const sc_lv<6> ap_const_lv6_A;
    static const sc_lv<6> ap_const_lv6_B;
    static const sc_lv<6> ap_const_lv6_C;
    static const sc_lv<6> ap_const_lv6_D;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_428A2F98;
    static const sc_lv<32> ap_const_lv32_71374491;
    static const sc_lv<32> ap_const_lv32_B5C0FBCF;
    static const sc_lv<32> ap_const_lv32_E9B5DBA5;
    static const sc_lv<32> ap_const_lv32_3956C25B;
    static const sc_lv<32> ap_const_lv32_59F111F1;
    static const sc_lv<32> ap_const_lv32_923F82A4;
    static const sc_lv<32> ap_const_lv32_AB1C5ED5;
    static const sc_lv<32> ap_const_lv32_D807AA98;
    static const sc_lv<32> ap_const_lv32_12835B01;
    static const sc_lv<32> ap_const_lv32_243185BE;
    static const sc_lv<32> ap_const_lv32_550C7DC3;
    static const sc_lv<32> ap_const_lv32_72BE5D74;
    static const sc_lv<32> ap_const_lv32_80DEB1FE;
    static const sc_lv<32> ap_const_lv32_9BDC06A7;
    static const sc_lv<32> ap_const_lv32_C19BF174;
    static const sc_lv<32> ap_const_lv32_E49B69C1;
    static const sc_lv<32> ap_const_lv32_EFBE4786;
    static const sc_lv<32> ap_const_lv32_FC19DC6;
    static const sc_lv<32> ap_const_lv32_240CA1CC;
    static const sc_lv<32> ap_const_lv32_2DE92C6F;
    static const sc_lv<32> ap_const_lv32_4A7484AA;
    static const sc_lv<32> ap_const_lv32_5CB0A9DC;
    static const sc_lv<32> ap_const_lv32_76F988DA;
    static const sc_lv<32> ap_const_lv32_983E5152;
    static const sc_lv<32> ap_const_lv32_A831C66D;
    static const sc_lv<32> ap_const_lv32_B00327C8;
    static const sc_lv<32> ap_const_lv32_BF597FC7;
    static const sc_lv<32> ap_const_lv32_C6E00BF3;
    static const sc_lv<32> ap_const_lv32_D5A79147;
    static const sc_lv<32> ap_const_lv32_6CA6351;
    static const sc_lv<32> ap_const_lv32_14292967;
    static const sc_lv<32> ap_const_lv32_27B70A85;
    static const sc_lv<32> ap_const_lv32_2E1B2138;
    static const sc_lv<32> ap_const_lv32_4D2C6DFC;
    static const sc_lv<32> ap_const_lv32_53380D13;
    static const sc_lv<32> ap_const_lv32_650A7354;
    static const sc_lv<32> ap_const_lv32_766A0ABB;
    static const sc_lv<32> ap_const_lv32_81C2C92E;
    static const sc_lv<32> ap_const_lv32_92722C85;
    static const sc_lv<32> ap_const_lv32_A2BFE8A1;
    static const sc_lv<32> ap_const_lv32_A81A664B;
    static const sc_lv<32> ap_const_lv32_C24B8B70;
    static const sc_lv<32> ap_const_lv32_C76C51A3;
    static const sc_lv<32> ap_const_lv32_D192E819;
    static const sc_lv<32> ap_const_lv32_D6990624;
    static const sc_lv<32> ap_const_lv32_F40E3585;
    static const sc_lv<32> ap_const_lv32_106AA070;
    static const sc_lv<32> ap_const_lv32_19A4C116;
    static const sc_lv<32> ap_const_lv32_1E376C08;
    static const sc_lv<32> ap_const_lv32_2748774C;
    static const sc_lv<32> ap_const_lv32_34B0BCB5;
    static const sc_lv<32> ap_const_lv32_391C0CB3;
    static const sc_lv<32> ap_const_lv32_4ED8AA4A;
    static const sc_lv<32> ap_const_lv32_5B9CCA4F;
    static const sc_lv<32> ap_const_lv32_682E6FF3;
    static const sc_lv<32> ap_const_lv32_748F82EE;
    static const sc_lv<32> ap_const_lv32_78A5636F;
    static const sc_lv<32> ap_const_lv32_84C87814;
    static const sc_lv<32> ap_const_lv32_8CC70208;
    static const sc_lv<32> ap_const_lv32_90BEFFFA;
    static const sc_lv<32> ap_const_lv32_A4506CEB;
    static const sc_lv<32> ap_const_lv32_BEF9A3F7;
    static const sc_lv<32> ap_const_lv32_C67178F2;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_16;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_var_for_const5();
    void thread_ap_var_for_const6();
    void thread_ap_var_for_const7();
    void thread_ap_var_for_const8();
    void thread_ap_var_for_const9();
    void thread_ap_var_for_const10();
    void thread_ap_var_for_const11();
    void thread_ap_var_for_const12();
    void thread_ap_var_for_const13();
    void thread_ap_var_for_const14();
    void thread_ap_var_for_const15();
    void thread_ap_var_for_const16();
    void thread_ap_var_for_const17();
    void thread_ap_var_for_const18();
    void thread_ap_var_for_const19();
    void thread_ap_var_for_const20();
    void thread_ap_var_for_const21();
    void thread_ap_var_for_const22();
    void thread_ap_var_for_const23();
    void thread_ap_var_for_const24();
    void thread_ap_var_for_const25();
    void thread_ap_var_for_const26();
    void thread_ap_var_for_const27();
    void thread_ap_var_for_const28();
    void thread_ap_var_for_const29();
    void thread_ap_var_for_const30();
    void thread_ap_var_for_const31();
    void thread_ap_var_for_const32();
    void thread_ap_var_for_const33();
    void thread_ap_var_for_const34();
    void thread_ap_var_for_const35();
    void thread_ap_var_for_const36();
    void thread_ap_var_for_const37();
    void thread_ap_var_for_const38();
    void thread_ap_var_for_const39();
    void thread_ap_var_for_const40();
    void thread_ap_var_for_const41();
    void thread_ap_var_for_const42();
    void thread_ap_var_for_const43();
    void thread_ap_var_for_const44();
    void thread_ap_var_for_const45();
    void thread_ap_var_for_const46();
    void thread_ap_var_for_const47();
    void thread_ap_var_for_const48();
    void thread_ap_var_for_const49();
    void thread_ap_var_for_const50();
    void thread_ap_var_for_const51();
    void thread_ap_var_for_const52();
    void thread_ap_var_for_const53();
    void thread_ap_var_for_const54();
    void thread_ap_var_for_const55();
    void thread_ap_var_for_const56();
    void thread_ap_var_for_const57();
    void thread_ap_var_for_const58();
    void thread_ap_var_for_const59();
    void thread_ap_var_for_const60();
    void thread_ap_var_for_const61();
    void thread_ap_var_for_const62();
    void thread_ap_var_for_const63();
    void thread_ap_clk_no_reset_();
    void thread_W_0_fu_2033_p17();
    void thread_W_16_fu_1783_p2();
    void thread_a_fu_2743_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_condition_1789();
    void thread_ap_condition_698();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_W_load_phi_phi_fu_865_p96();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_ap_return_4();
    void thread_ap_return_5();
    void thread_ap_return_6();
    void thread_ap_return_7();
    void thread_e_fu_2732_p2();
    void thread_exitcond_fu_1197_p2();
    void thread_i_1_fu_1203_p2();
    void thread_icmp_fu_1219_p2();
    void thread_out_state_0_write_a_fu_2139_p2();
    void thread_out_state_1_write_a_fu_2145_p2();
    void thread_out_state_2_write_a_fu_2151_p2();
    void thread_out_state_3_write_a_fu_2157_p2();
    void thread_out_state_4_write_a_fu_2163_p2();
    void thread_out_state_5_write_a_fu_2169_p2();
    void thread_out_state_6_write_a_fu_2175_p2();
    void thread_out_state_7_write_a_fu_2181_p2();
    void thread_t0_fu_2649_p2();
    void thread_tmp16_fu_1287_p2();
    void thread_tmp17_fu_1625_p2();
    void thread_tmp19_fu_1771_p2();
    void thread_tmp20_fu_1777_p2();
    void thread_tmp21_fu_2307_p2();
    void thread_tmp24_fu_2645_p2();
    void thread_tmp25_fu_2615_p2();
    void thread_tmp26_fu_2609_p2();
    void thread_tmp27_fu_2720_p2();
    void thread_tmp28_fu_2738_p2();
    void thread_tmp_12_fu_1229_p4();
    void thread_tmp_14_fu_1243_p3();
    void thread_tmp_15_fu_1251_p4();
    void thread_tmp_17_fu_1265_p3();
    void thread_tmp_18_fu_1273_p4();
    void thread_tmp_20_fu_1293_p2();
    void thread_tmp_25_fu_1567_p4();
    void thread_tmp_27_fu_1581_p3();
    void thread_tmp_28_fu_1589_p4();
    void thread_tmp_30_fu_1603_p3();
    void thread_tmp_31_fu_1611_p4();
    void thread_tmp_33_fu_1631_p2();
    void thread_tmp_40_fu_2241_p4();
    void thread_tmp_42_fu_2255_p3();
    void thread_tmp_43_fu_2263_p4();
    void thread_tmp_45_fu_2277_p3();
    void thread_tmp_46_fu_2285_p4();
    void thread_tmp_48_fu_2299_p3();
    void thread_tmp_50_fu_2313_p2();
    void thread_tmp_51_fu_2319_p2();
    void thread_tmp_52_fu_2325_p2();
    void thread_tmp_53_fu_2331_p2();
    void thread_tmp_58_fu_2654_p4();
    void thread_tmp_60_fu_2668_p3();
    void thread_tmp_61_fu_2676_p4();
    void thread_tmp_63_fu_2690_p3();
    void thread_tmp_64_fu_2698_p4();
    void thread_tmp_66_fu_2712_p3();
    void thread_tmp_67_fu_1283_p1();
    void thread_tmp_68_fu_2726_p2();
    void thread_tmp_69_fu_2621_p2();
    void thread_tmp_70_fu_2627_p2();
    void thread_tmp_71_fu_2633_p2();
    void thread_tmp_72_fu_1621_p1();
    void thread_tmp_80_fu_2055_p1();
    void thread_tmp_82_fu_1225_p1();
    void thread_tmp_83_fu_1239_p1();
    void thread_tmp_84_fu_1261_p1();
    void thread_tmp_85_fu_1577_p1();
    void thread_tmp_86_fu_1599_p1();
    void thread_tmp_87_fu_2251_p1();
    void thread_tmp_88_fu_2273_p1();
    void thread_tmp_89_fu_2295_p1();
    void thread_tmp_90_fu_2337_p1();
    void thread_tmp_91_fu_2664_p1();
    void thread_tmp_92_fu_2686_p1();
    void thread_tmp_93_fu_2708_p1();
    void thread_tmp_fu_1209_p4();
    void thread_tmp_s_fu_2639_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif