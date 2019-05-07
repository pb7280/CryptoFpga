set moduleName sha256_transform
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sha256_transform}
set C_modelType { int 256 }
set C_modelArgList {
	{ block_0_read int 32 regular  }
	{ block_1_read int 32 regular  }
	{ block_2_read int 32 regular  }
	{ block_3_read int 32 regular  }
	{ block_4_read int 32 regular  }
	{ block_5_read int 32 regular  }
	{ block_6_read int 32 regular  }
	{ block_7_read int 32 regular  }
	{ block_8_read int 32 regular  }
	{ block_9_read int 32 regular  }
	{ block_10_read int 32 regular  }
	{ block_11_read int 32 regular  }
	{ block_12_read int 32 regular  }
	{ block_13_read int 32 regular  }
	{ block_14_read int 32 regular  }
	{ block_15_read int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "block_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_5_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_6_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_7_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_8_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_9_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_10_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_11_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_12_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_13_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_14_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_15_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 256} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ block_0_read sc_in sc_lv 32 signal 0 } 
	{ block_1_read sc_in sc_lv 32 signal 1 } 
	{ block_2_read sc_in sc_lv 32 signal 2 } 
	{ block_3_read sc_in sc_lv 32 signal 3 } 
	{ block_4_read sc_in sc_lv 32 signal 4 } 
	{ block_5_read sc_in sc_lv 32 signal 5 } 
	{ block_6_read sc_in sc_lv 32 signal 6 } 
	{ block_7_read sc_in sc_lv 32 signal 7 } 
	{ block_8_read sc_in sc_lv 32 signal 8 } 
	{ block_9_read sc_in sc_lv 32 signal 9 } 
	{ block_10_read sc_in sc_lv 32 signal 10 } 
	{ block_11_read sc_in sc_lv 32 signal 11 } 
	{ block_12_read sc_in sc_lv 32 signal 12 } 
	{ block_13_read sc_in sc_lv 32 signal 13 } 
	{ block_14_read sc_in sc_lv 32 signal 14 } 
	{ block_15_read sc_in sc_lv 32 signal 15 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
	{ ap_return_7 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "block_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_0_read", "role": "default" }} , 
 	{ "name": "block_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_1_read", "role": "default" }} , 
 	{ "name": "block_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_2_read", "role": "default" }} , 
 	{ "name": "block_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_3_read", "role": "default" }} , 
 	{ "name": "block_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_4_read", "role": "default" }} , 
 	{ "name": "block_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_5_read", "role": "default" }} , 
 	{ "name": "block_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_6_read", "role": "default" }} , 
 	{ "name": "block_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_7_read", "role": "default" }} , 
 	{ "name": "block_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_8_read", "role": "default" }} , 
 	{ "name": "block_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_9_read", "role": "default" }} , 
 	{ "name": "block_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_10_read", "role": "default" }} , 
 	{ "name": "block_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_11_read", "role": "default" }} , 
 	{ "name": "block_12_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_12_read", "role": "default" }} , 
 	{ "name": "block_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_13_read", "role": "default" }} , 
 	{ "name": "block_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_14_read", "role": "default" }} , 
 	{ "name": "block_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_15_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "193", "EstimateLatencyMax" : "193",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "block_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_15_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_bkb_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_bkb_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_cud_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_bkb_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_bkb_U6", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		block_0_read {Type I LastRead 0 FirstWrite -1}
		block_1_read {Type I LastRead 0 FirstWrite -1}
		block_2_read {Type I LastRead 0 FirstWrite -1}
		block_3_read {Type I LastRead 0 FirstWrite -1}
		block_4_read {Type I LastRead 0 FirstWrite -1}
		block_5_read {Type I LastRead 0 FirstWrite -1}
		block_6_read {Type I LastRead 0 FirstWrite -1}
		block_7_read {Type I LastRead 0 FirstWrite -1}
		block_8_read {Type I LastRead 0 FirstWrite -1}
		block_9_read {Type I LastRead 0 FirstWrite -1}
		block_10_read {Type I LastRead 0 FirstWrite -1}
		block_11_read {Type I LastRead 0 FirstWrite -1}
		block_12_read {Type I LastRead 0 FirstWrite -1}
		block_13_read {Type I LastRead 0 FirstWrite -1}
		block_14_read {Type I LastRead 0 FirstWrite -1}
		block_15_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "193", "Max" : "193"}
	, {"Name" : "Interval", "Min" : "193", "Max" : "193"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	block_0_read { ap_none {  { block_0_read in_data 0 32 } } }
	block_1_read { ap_none {  { block_1_read in_data 0 32 } } }
	block_2_read { ap_none {  { block_2_read in_data 0 32 } } }
	block_3_read { ap_none {  { block_3_read in_data 0 32 } } }
	block_4_read { ap_none {  { block_4_read in_data 0 32 } } }
	block_5_read { ap_none {  { block_5_read in_data 0 32 } } }
	block_6_read { ap_none {  { block_6_read in_data 0 32 } } }
	block_7_read { ap_none {  { block_7_read in_data 0 32 } } }
	block_8_read { ap_none {  { block_8_read in_data 0 32 } } }
	block_9_read { ap_none {  { block_9_read in_data 0 32 } } }
	block_10_read { ap_none {  { block_10_read in_data 0 32 } } }
	block_11_read { ap_none {  { block_11_read in_data 0 32 } } }
	block_12_read { ap_none {  { block_12_read in_data 0 32 } } }
	block_13_read { ap_none {  { block_13_read in_data 0 32 } } }
	block_14_read { ap_none {  { block_14_read in_data 0 32 } } }
	block_15_read { ap_none {  { block_15_read in_data 0 32 } } }
}
