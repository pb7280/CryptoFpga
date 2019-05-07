set moduleName sha256_transform_16
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
set C_modelName {sha256_transform.16}
set C_modelType { int 32 }
set C_modelArgList {
	{ block_0_read int 32 regular  }
	{ block_1_read int 32 regular  }
	{ block_2_read int 32 regular  }
	{ block_3_read int 32 regular  }
	{ block_4_read int 32 regular  }
	{ block_5_read int 32 regular  }
	{ block_6_read int 32 regular  }
	{ block_7_read int 32 regular  }
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
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 15
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
	{ ap_return sc_out sc_lv 32 signal -1 } 
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
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "sha256_transform_16",
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
			{"Name" : "block_7_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_bkb_U56", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_bkb_U57", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_bkb_U58", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_cud_x_U59", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_bkb_U60", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_bkb_U61", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform_16 {
		block_0_read {Type I LastRead 0 FirstWrite -1}
		block_1_read {Type I LastRead 0 FirstWrite -1}
		block_2_read {Type I LastRead 0 FirstWrite -1}
		block_3_read {Type I LastRead 0 FirstWrite -1}
		block_4_read {Type I LastRead 0 FirstWrite -1}
		block_5_read {Type I LastRead 0 FirstWrite -1}
		block_6_read {Type I LastRead 0 FirstWrite -1}
		block_7_read {Type I LastRead 0 FirstWrite -1}}}

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
}
