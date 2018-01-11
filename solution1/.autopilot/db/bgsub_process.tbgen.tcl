set moduleName bgsub_process
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {bgsub_process}
set C_modelType { void 0 }
set C_modelArgList { 
	{ frame_in int 8 regular {array 1280 { 1 3 } 1 1 }  }
	{ frame_out int 1 regular {array 1280 { 0 3 } 0 1 }  }
	{ bgmodel_sortKey float 32 regular {array 2560 { 2 2 } 1 1 }  }
	{ bgmodel_weight float 32 regular {array 2560 { 2 2 } 1 1 }  }
	{ bgmodel_mean float 32 regular {array 2560 { 2 2 } 1 1 }  }
	{ bgmodel_var float 32 regular {array 2560 { 2 2 } 1 1 }  }
	{ learningRate float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "frame_in", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "frame_out", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bgmodel_sortKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_weight", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_mean", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_var", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "learningRate", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ frame_in_address0 sc_out sc_lv 11 signal 0 } 
	{ frame_in_ce0 sc_out sc_logic 1 signal 0 } 
	{ frame_in_q0 sc_in sc_lv 8 signal 0 } 
	{ frame_out_address0 sc_out sc_lv 11 signal 1 } 
	{ frame_out_ce0 sc_out sc_logic 1 signal 1 } 
	{ frame_out_we0 sc_out sc_logic 1 signal 1 } 
	{ frame_out_d0 sc_out sc_lv 1 signal 1 } 
	{ bgmodel_sortKey_address0 sc_out sc_lv 12 signal 2 } 
	{ bgmodel_sortKey_ce0 sc_out sc_logic 1 signal 2 } 
	{ bgmodel_sortKey_we0 sc_out sc_logic 1 signal 2 } 
	{ bgmodel_sortKey_d0 sc_out sc_lv 32 signal 2 } 
	{ bgmodel_sortKey_q0 sc_in sc_lv 32 signal 2 } 
	{ bgmodel_sortKey_address1 sc_out sc_lv 12 signal 2 } 
	{ bgmodel_sortKey_ce1 sc_out sc_logic 1 signal 2 } 
	{ bgmodel_sortKey_we1 sc_out sc_logic 1 signal 2 } 
	{ bgmodel_sortKey_d1 sc_out sc_lv 32 signal 2 } 
	{ bgmodel_sortKey_q1 sc_in sc_lv 32 signal 2 } 
	{ bgmodel_weight_address0 sc_out sc_lv 12 signal 3 } 
	{ bgmodel_weight_ce0 sc_out sc_logic 1 signal 3 } 
	{ bgmodel_weight_we0 sc_out sc_logic 1 signal 3 } 
	{ bgmodel_weight_d0 sc_out sc_lv 32 signal 3 } 
	{ bgmodel_weight_q0 sc_in sc_lv 32 signal 3 } 
	{ bgmodel_weight_address1 sc_out sc_lv 12 signal 3 } 
	{ bgmodel_weight_ce1 sc_out sc_logic 1 signal 3 } 
	{ bgmodel_weight_we1 sc_out sc_logic 1 signal 3 } 
	{ bgmodel_weight_d1 sc_out sc_lv 32 signal 3 } 
	{ bgmodel_weight_q1 sc_in sc_lv 32 signal 3 } 
	{ bgmodel_mean_address0 sc_out sc_lv 12 signal 4 } 
	{ bgmodel_mean_ce0 sc_out sc_logic 1 signal 4 } 
	{ bgmodel_mean_we0 sc_out sc_logic 1 signal 4 } 
	{ bgmodel_mean_d0 sc_out sc_lv 32 signal 4 } 
	{ bgmodel_mean_q0 sc_in sc_lv 32 signal 4 } 
	{ bgmodel_mean_address1 sc_out sc_lv 12 signal 4 } 
	{ bgmodel_mean_ce1 sc_out sc_logic 1 signal 4 } 
	{ bgmodel_mean_we1 sc_out sc_logic 1 signal 4 } 
	{ bgmodel_mean_d1 sc_out sc_lv 32 signal 4 } 
	{ bgmodel_mean_q1 sc_in sc_lv 32 signal 4 } 
	{ bgmodel_var_address0 sc_out sc_lv 12 signal 5 } 
	{ bgmodel_var_ce0 sc_out sc_logic 1 signal 5 } 
	{ bgmodel_var_we0 sc_out sc_logic 1 signal 5 } 
	{ bgmodel_var_d0 sc_out sc_lv 32 signal 5 } 
	{ bgmodel_var_q0 sc_in sc_lv 32 signal 5 } 
	{ bgmodel_var_address1 sc_out sc_lv 12 signal 5 } 
	{ bgmodel_var_ce1 sc_out sc_logic 1 signal 5 } 
	{ bgmodel_var_we1 sc_out sc_logic 1 signal 5 } 
	{ bgmodel_var_d1 sc_out sc_lv 32 signal 5 } 
	{ bgmodel_var_q1 sc_in sc_lv 32 signal 5 } 
	{ learningRate sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "frame_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "frame_in", "role": "address0" }} , 
 	{ "name": "frame_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_in", "role": "ce0" }} , 
 	{ "name": "frame_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_in", "role": "q0" }} , 
 	{ "name": "frame_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "frame_out", "role": "address0" }} , 
 	{ "name": "frame_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "ce0" }} , 
 	{ "name": "frame_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "we0" }} , 
 	{ "name": "frame_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "d0" }} , 
 	{ "name": "bgmodel_sortKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "address0" }} , 
 	{ "name": "bgmodel_sortKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ce0" }} , 
 	{ "name": "bgmodel_sortKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "we0" }} , 
 	{ "name": "bgmodel_sortKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "d0" }} , 
 	{ "name": "bgmodel_sortKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "q0" }} , 
 	{ "name": "bgmodel_sortKey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "address1" }} , 
 	{ "name": "bgmodel_sortKey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ce1" }} , 
 	{ "name": "bgmodel_sortKey_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "we1" }} , 
 	{ "name": "bgmodel_sortKey_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "d1" }} , 
 	{ "name": "bgmodel_sortKey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "q1" }} , 
 	{ "name": "bgmodel_weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "address0" }} , 
 	{ "name": "bgmodel_weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ce0" }} , 
 	{ "name": "bgmodel_weight_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "we0" }} , 
 	{ "name": "bgmodel_weight_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "d0" }} , 
 	{ "name": "bgmodel_weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "q0" }} , 
 	{ "name": "bgmodel_weight_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "address1" }} , 
 	{ "name": "bgmodel_weight_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ce1" }} , 
 	{ "name": "bgmodel_weight_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "we1" }} , 
 	{ "name": "bgmodel_weight_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "d1" }} , 
 	{ "name": "bgmodel_weight_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "q1" }} , 
 	{ "name": "bgmodel_mean_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "address0" }} , 
 	{ "name": "bgmodel_mean_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ce0" }} , 
 	{ "name": "bgmodel_mean_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "we0" }} , 
 	{ "name": "bgmodel_mean_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "d0" }} , 
 	{ "name": "bgmodel_mean_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "q0" }} , 
 	{ "name": "bgmodel_mean_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "address1" }} , 
 	{ "name": "bgmodel_mean_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ce1" }} , 
 	{ "name": "bgmodel_mean_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "we1" }} , 
 	{ "name": "bgmodel_mean_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "d1" }} , 
 	{ "name": "bgmodel_mean_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "q1" }} , 
 	{ "name": "bgmodel_var_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "address0" }} , 
 	{ "name": "bgmodel_var_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ce0" }} , 
 	{ "name": "bgmodel_var_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "we0" }} , 
 	{ "name": "bgmodel_var_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "d0" }} , 
 	{ "name": "bgmodel_var_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "q0" }} , 
 	{ "name": "bgmodel_var_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "address1" }} , 
 	{ "name": "bgmodel_var_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ce1" }} , 
 	{ "name": "bgmodel_var_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "we1" }} , 
 	{ "name": "bgmodel_var_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "d1" }} , 
 	{ "name": "bgmodel_var_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "q1" }} , 
 	{ "name": "learningRate", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "learningRate", "role": "default" }}  ]}
set Spec2ImplPortList { 
	frame_in { ap_memory {  { frame_in_address0 mem_address 1 11 }  { frame_in_ce0 mem_ce 1 1 }  { frame_in_q0 mem_dout 0 8 } } }
	frame_out { ap_memory {  { frame_out_address0 mem_address 1 11 }  { frame_out_ce0 mem_ce 1 1 }  { frame_out_we0 mem_we 1 1 }  { frame_out_d0 mem_din 1 1 } } }
	bgmodel_sortKey { ap_memory {  { bgmodel_sortKey_address0 mem_address 1 12 }  { bgmodel_sortKey_ce0 mem_ce 1 1 }  { bgmodel_sortKey_we0 mem_we 1 1 }  { bgmodel_sortKey_d0 mem_din 1 32 }  { bgmodel_sortKey_q0 mem_dout 0 32 }  { bgmodel_sortKey_address1 mem_address 1 12 }  { bgmodel_sortKey_ce1 mem_ce 1 1 }  { bgmodel_sortKey_we1 mem_we 1 1 }  { bgmodel_sortKey_d1 mem_din 1 32 }  { bgmodel_sortKey_q1 mem_dout 0 32 } } }
	bgmodel_weight { ap_memory {  { bgmodel_weight_address0 mem_address 1 12 }  { bgmodel_weight_ce0 mem_ce 1 1 }  { bgmodel_weight_we0 mem_we 1 1 }  { bgmodel_weight_d0 mem_din 1 32 }  { bgmodel_weight_q0 mem_dout 0 32 }  { bgmodel_weight_address1 mem_address 1 12 }  { bgmodel_weight_ce1 mem_ce 1 1 }  { bgmodel_weight_we1 mem_we 1 1 }  { bgmodel_weight_d1 mem_din 1 32 }  { bgmodel_weight_q1 mem_dout 0 32 } } }
	bgmodel_mean { ap_memory {  { bgmodel_mean_address0 mem_address 1 12 }  { bgmodel_mean_ce0 mem_ce 1 1 }  { bgmodel_mean_we0 mem_we 1 1 }  { bgmodel_mean_d0 mem_din 1 32 }  { bgmodel_mean_q0 mem_dout 0 32 }  { bgmodel_mean_address1 mem_address 1 12 }  { bgmodel_mean_ce1 mem_ce 1 1 }  { bgmodel_mean_we1 mem_we 1 1 }  { bgmodel_mean_d1 mem_din 1 32 }  { bgmodel_mean_q1 mem_dout 0 32 } } }
	bgmodel_var { ap_memory {  { bgmodel_var_address0 mem_address 1 12 }  { bgmodel_var_ce0 mem_ce 1 1 }  { bgmodel_var_we0 mem_we 1 1 }  { bgmodel_var_d0 mem_din 1 32 }  { bgmodel_var_q0 mem_dout 0 32 }  { bgmodel_var_address1 mem_address 1 12 }  { bgmodel_var_ce1 mem_ce 1 1 }  { bgmodel_var_we1 mem_we 1 1 }  { bgmodel_var_d1 mem_din 1 32 }  { bgmodel_var_q1 mem_dout 0 32 } } }
	learningRate { ap_none {  { learningRate in_data 0 32 } } }
}
