############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sha256d
set_top scanhash_sha256d
add_files sha256d/sha256d.cpp
add_files -tb sha256d/tb/sha256d_test.cpp
open_solution "solution1"
set_part {xc7z045ffg900-2} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./sha256d/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
