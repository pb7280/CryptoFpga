
#create_clock -period 5.000 -name refclk -waveform {0.000 2.500} [get_ports sys_clk_p]


#
# pin constraints
#
set_property LOC G9 [ get_ports sys_clk_n]
set_property IOSTANDARD LVDS [ get_ports sys_clk_n]
set_property LOC H9 [ get_ports sys_clk_p]
set_property IOSTANDARD LVDS [ get_ports sys_clk_p]
set_property LOC B14 [ get_ports sys_rst]
set_property IOSTANDARD LVCMOS18 [ get_ports sys_rst]


set_property LOC C6 [ get_ports LEDs_8Bits_tri_o[0]]
set_property IOSTANDARD LVCMOS15 [ get_ports LEDs_8Bits_tri_o[0]]

set_property LOC B6 [ get_ports LEDs_8Bits_tri_o[1]]
set_property IOSTANDARD LVCMOS15 [ get_ports LEDs_8Bits_tri_o[1]]

set_property LOC L9 [ get_ports LEDs_8Bits_tri_o[2]]
set_property IOSTANDARD LVCMOS15 [ get_ports LEDs_8Bits_tri_o[2]]

set_property LOC L10 [ get_ports LEDs_8Bits_tri_o[3]]
set_property IOSTANDARD LVCMOS15 [ get_ports LEDs_8Bits_tri_o[3]]

set_property LOC K10 [ get_ports LEDs_8Bits_tri_o[4]]
set_property IOSTANDARD LVCMOS15 [ get_ports LEDs_8Bits_tri_o[4]]

set_property LOC K11 [ get_ports LEDs_8Bits_tri_o[5]]
set_property IOSTANDARD LVCMOS15 [ get_ports LEDs_8Bits_tri_o[5]]

set_property LOC L12 [ get_ports LEDs_8Bits_tri_o[6]]
set_property IOSTANDARD LVCMOS15 [ get_ports LEDs_8Bits_tri_o[6]]

set_property LOC K12 [ get_ports LEDs_8Bits_tri_o[7]]
set_property IOSTANDARD LVCMOS15 [ get_ports LEDs_8Bits_tri_o[7]]



set_property LOC C7 [ get_ports DIP_Switches_8Bits_tri_i[0]]
set_property IOSTANDARD LVCMOS15 [ get_ports DIP_Switches_8Bits_tri_i[0]]

set_property LOC B7 [ get_ports DIP_Switches_8Bits_tri_i[1]]
set_property IOSTANDARD LVCMOS15 [ get_ports DIP_Switches_8Bits_tri_i[1]]

set_property LOC A7 [ get_ports DIP_Switches_8Bits_tri_i[2]]
set_property IOSTANDARD LVCMOS15 [ get_ports DIP_Switches_8Bits_tri_i[2]]

set_property LOC B9 [ get_ports DIP_Switches_8Bits_tri_i[3]]
set_property IOSTANDARD LVCMOS15 [ get_ports DIP_Switches_8Bits_tri_i[3]]

set_property LOC A8 [ get_ports DIP_Switches_8Bits_tri_i[4]]
set_property IOSTANDARD LVCMOS15 [ get_ports DIP_Switches_8Bits_tri_i[4]]

set_property LOC A9 [ get_ports DIP_Switches_8Bits_tri_i[5]]
set_property IOSTANDARD LVCMOS15 [ get_ports DIP_Switches_8Bits_tri_i[5]]

set_property LOC B10 [ get_ports DIP_Switches_8Bits_tri_i[6]]
set_property IOSTANDARD LVCMOS15 [ get_ports DIP_Switches_8Bits_tri_i[6]]

set_property LOC A10 [ get_ports DIP_Switches_8Bits_tri_i[7]]
set_property IOSTANDARD LVCMOS15 [ get_ports DIP_Switches_8Bits_tri_i[7]]



set_property LOC A14 [ get_ports Push_Switches_3Bits_tri_i[0]]
set_property IOSTANDARD LVCMOS18 [ get_ports Push_Switches_3Bits_tri_i[0]]

set_property LOC A13 [ get_ports Push_Switches_3Bits_tri_i[1]]
set_property IOSTANDARD LVCMOS18 [ get_ports Push_Switches_3Bits_tri_i[1]]

set_property LOC A12 [ get_ports Push_Switches_3Bits_tri_i[2]]
set_property IOSTANDARD LVCMOS18 [ get_ports Push_Switches_3Bits_tri_i[2]]


