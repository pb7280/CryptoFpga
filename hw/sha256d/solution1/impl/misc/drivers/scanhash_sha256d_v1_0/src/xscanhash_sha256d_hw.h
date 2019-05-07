// ==============================================================
// File generated on Fri Apr 26 15:35:07 -0400 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CTRL_BUS
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x010 : Data signal of ap_return
//         bit 31~0 - ap_return[31:0] (Read)
// 0x120 : Data signal of max_nonce
//         bit 31~0 - max_nonce[31:0] (Read/Write)
// 0x124 : reserved
// 0x128 : Data signal of num_hashes
//         bit 31~0 - num_hashes[31:0] (Read)
// 0x12c : Control signal of num_hashes
//         bit 0  - num_hashes_ap_vld (Read/COR)
//         others - reserved
// 0x080 ~
// 0x0ff : Memory 'work' (32 * 32b)
//         Word n : bit [31:0] - work[n]
// 0x100 ~
// 0x11f : Memory 'target' (8 * 32b)
//         Word n : bit [31:0] - target[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSCANHASH_SHA256D_CTRL_BUS_ADDR_AP_CTRL         0x000
#define XSCANHASH_SHA256D_CTRL_BUS_ADDR_GIE             0x004
#define XSCANHASH_SHA256D_CTRL_BUS_ADDR_IER             0x008
#define XSCANHASH_SHA256D_CTRL_BUS_ADDR_ISR             0x00c
#define XSCANHASH_SHA256D_CTRL_BUS_ADDR_AP_RETURN       0x010
#define XSCANHASH_SHA256D_CTRL_BUS_BITS_AP_RETURN       32
#define XSCANHASH_SHA256D_CTRL_BUS_ADDR_MAX_NONCE_DATA  0x120
#define XSCANHASH_SHA256D_CTRL_BUS_BITS_MAX_NONCE_DATA  32
#define XSCANHASH_SHA256D_CTRL_BUS_ADDR_NUM_HASHES_DATA 0x128
#define XSCANHASH_SHA256D_CTRL_BUS_BITS_NUM_HASHES_DATA 32
#define XSCANHASH_SHA256D_CTRL_BUS_ADDR_NUM_HASHES_CTRL 0x12c
#define XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_BASE       0x080
#define XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_HIGH       0x0ff
#define XSCANHASH_SHA256D_CTRL_BUS_WIDTH_WORK           32
#define XSCANHASH_SHA256D_CTRL_BUS_DEPTH_WORK           32
#define XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_BASE     0x100
#define XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_HIGH     0x11f
#define XSCANHASH_SHA256D_CTRL_BUS_WIDTH_TARGET         32
#define XSCANHASH_SHA256D_CTRL_BUS_DEPTH_TARGET         8

