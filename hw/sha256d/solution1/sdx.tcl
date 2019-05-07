# ==============================================================
# File generated on Fri Apr 26 15:35:08 -0400 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../tb/sha256d_test.cpp -cflags { -Wno-unknown-pragmas}
add_files sha256d/sha256d.cpp
set_part xc7z045ffg900-2
create_clock -name default -period 10
config_export -format=ip_catalog
config_export -rtl=verilog
