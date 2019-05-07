set moduleName scanhash_sha256d
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
set C_modelName {scanhash_sha256d}
set C_modelType { int 32 }
set C_modelArgList {
	{ work int 32 regular {axi_slave 2}  }
	{ target int 32 regular {axi_slave 0}  }
	{ max_nonce int 32 regular {axi_slave 0}  }
	{ num_hashes int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "work", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_memory","bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "work","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"in":128, "out":128}, "offset_end" : {"in":255, "out":255}} , 
 	{ "Name" : "target", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "target","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}], "offset" : {"in":256}, "offset_end" : {"in":287}} , 
 	{ "Name" : "max_nonce", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "max_nonce","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":288}, "offset_end" : {"in":295}} , 
 	{ "Name" : "num_hashes", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "num_hashes","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":296}, "offset_end" : {"out":303}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}], "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_CTRL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_CTRL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_CTRL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWADDR" },"address":[{"name":"scanhash_sha256d","role":"start","value":"0","valid_bit":"0"},{"name":"scanhash_sha256d","role":"continue","value":"0","valid_bit":"4"},{"name":"scanhash_sha256d","role":"auto_start","value":"0","valid_bit":"7"},{"name":"work","role":"data","value":"128"},{"name":"target","role":"data","value":"256"},{"name":"max_nonce","role":"data","value":"288"}] },
	{ "name": "s_axi_CTRL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARADDR" },"address":[{"name":"scanhash_sha256d","role":"start","value":"0","valid_bit":"0"},{"name":"scanhash_sha256d","role":"done","value":"0","valid_bit":"1"},{"name":"scanhash_sha256d","role":"idle","value":"0","valid_bit":"2"},{"name":"scanhash_sha256d","role":"ready","value":"0","valid_bit":"3"},{"name":"scanhash_sha256d","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"},{"name":"work","role":"data","value":"128"},{"name":"num_hashes","role":"data","value":"296"}, {"name":"num_hashes","role":"valid","value":"300","valid_bit":"0"}] },
	{ "name": "s_axi_CTRL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "9", "16"],
		"CDFG" : "scanhash_sha256d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "668", "EstimateLatencyMax" : "1556000000279",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_1_fu_333"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_361"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_16_fu_381"}],
		"Port" : [
			{"Name" : "work", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "target", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "max_nonce", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_hashes", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanhash_sha256d_CTRL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_1_fu_333", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8"],
		"CDFG" : "sha256_transform_1",
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
			{"Name" : "state_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_7_read", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_1_fu_333.scanhash_sha256d_bkb_U26", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_1_fu_333.scanhash_sha256d_bkb_U27", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_1_fu_333.scanhash_sha256d_bkb_U28", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_1_fu_333.scanhash_sha256d_cud_U29", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_1_fu_333.scanhash_sha256d_bkb_U30", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_1_fu_333.scanhash_sha256d_bkb_U31", "Parent" : "2"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_361", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15"],
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_361.scanhash_sha256d_bkb_U1", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_361.scanhash_sha256d_bkb_U2", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_361.scanhash_sha256d_bkb_U3", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_361.scanhash_sha256d_cud_U4", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_361.scanhash_sha256d_bkb_U5", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_361.scanhash_sha256d_bkb_U6", "Parent" : "9"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_16_fu_381", "Parent" : "0", "Child" : ["17", "18", "19", "20", "21", "22"],
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_16_fu_381.scanhash_sha256d_bkb_U56", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_16_fu_381.scanhash_sha256d_bkb_U57", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_16_fu_381.scanhash_sha256d_bkb_U58", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_16_fu_381.scanhash_sha256d_cud_x_U59", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_16_fu_381.scanhash_sha256d_bkb_U60", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_16_fu_381.scanhash_sha256d_bkb_U61", "Parent" : "16"}]}


set ArgLastReadFirstWriteLatency {
	scanhash_sha256d {
		work {Type IO LastRead 4 FirstWrite 4}
		target {Type I LastRead 0 FirstWrite -1}
		max_nonce {Type I LastRead 1 FirstWrite -1}
		num_hashes {Type O LastRead -1 FirstWrite 4}}
	sha256_transform_1 {
		state_0_read {Type I LastRead 0 FirstWrite -1}
		state_1_read {Type I LastRead 0 FirstWrite -1}
		state_2_read {Type I LastRead 0 FirstWrite -1}
		state_3_read {Type I LastRead 0 FirstWrite -1}
		state_4_read {Type I LastRead 0 FirstWrite -1}
		state_5_read {Type I LastRead 0 FirstWrite -1}
		state_6_read {Type I LastRead 0 FirstWrite -1}
		state_7_read {Type I LastRead 0 FirstWrite -1}
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
		block_15_read {Type I LastRead 0 FirstWrite -1}}
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
		block_15_read {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "668", "Max" : "1556000000279"}
	, {"Name" : "Interval", "Min" : "669", "Max" : "1221839128"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
