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
	{ frame_in int 8 regular {array 320 { 1 3 } 1 1 }  }
	{ frame_out int 1 regular {array 320 { 0 3 } 0 1 }  }
	{ bgmodel float 32 regular {array 2560 { 2 2 } 1 1 }  }
	{ learningRate float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "frame_in", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "frame_out", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bgmodel", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "learningRate", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ frame_in_address0 sc_out sc_lv 9 signal 0 } 
	{ frame_in_ce0 sc_out sc_logic 1 signal 0 } 
	{ frame_in_q0 sc_in sc_lv 8 signal 0 } 
	{ frame_out_address0 sc_out sc_lv 9 signal 1 } 
	{ frame_out_ce0 sc_out sc_logic 1 signal 1 } 
	{ frame_out_we0 sc_out sc_logic 1 signal 1 } 
	{ frame_out_d0 sc_out sc_lv 1 signal 1 } 
	{ bgmodel_address0 sc_out sc_lv 12 signal 2 } 
	{ bgmodel_ce0 sc_out sc_logic 1 signal 2 } 
	{ bgmodel_we0 sc_out sc_logic 1 signal 2 } 
	{ bgmodel_d0 sc_out sc_lv 32 signal 2 } 
	{ bgmodel_q0 sc_in sc_lv 32 signal 2 } 
	{ bgmodel_address1 sc_out sc_lv 12 signal 2 } 
	{ bgmodel_ce1 sc_out sc_logic 1 signal 2 } 
	{ bgmodel_we1 sc_out sc_logic 1 signal 2 } 
	{ bgmodel_d1 sc_out sc_lv 32 signal 2 } 
	{ bgmodel_q1 sc_in sc_lv 32 signal 2 } 
	{ learningRate sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "frame_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "frame_in", "role": "address0" }} , 
 	{ "name": "frame_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_in", "role": "ce0" }} , 
 	{ "name": "frame_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_in", "role": "q0" }} , 
 	{ "name": "frame_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "frame_out", "role": "address0" }} , 
 	{ "name": "frame_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "ce0" }} , 
 	{ "name": "frame_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "we0" }} , 
 	{ "name": "frame_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "d0" }} , 
 	{ "name": "bgmodel_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bgmodel", "role": "address0" }} , 
 	{ "name": "bgmodel_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "ce0" }} , 
 	{ "name": "bgmodel_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "we0" }} , 
 	{ "name": "bgmodel_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel", "role": "d0" }} , 
 	{ "name": "bgmodel_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel", "role": "q0" }} , 
 	{ "name": "bgmodel_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bgmodel", "role": "address1" }} , 
 	{ "name": "bgmodel_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "ce1" }} , 
 	{ "name": "bgmodel_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "we1" }} , 
 	{ "name": "bgmodel_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel", "role": "d1" }} , 
 	{ "name": "bgmodel_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel", "role": "q1" }} , 
 	{ "name": "learningRate", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "learningRate", "role": "default" }}  ]}
set Spec2ImplPortList { 
	frame_in { ap_memory {  { frame_in_address0 mem_address 1 9 }  { frame_in_ce0 mem_ce 1 1 }  { frame_in_q0 mem_dout 0 8 } } }
	frame_out { ap_memory {  { frame_out_address0 mem_address 1 9 }  { frame_out_ce0 mem_ce 1 1 }  { frame_out_we0 mem_we 1 1 }  { frame_out_d0 mem_din 1 1 } } }
	bgmodel { ap_memory {  { bgmodel_address0 mem_address 1 12 }  { bgmodel_ce0 mem_ce 1 1 }  { bgmodel_we0 mem_we 1 1 }  { bgmodel_d0 mem_din 1 32 }  { bgmodel_q0 mem_dout 0 32 }  { bgmodel_address1 mem_address 1 12 }  { bgmodel_ce1 mem_ce 1 1 }  { bgmodel_we1 mem_we 1 1 }  { bgmodel_d1 mem_din 1 32 }  { bgmodel_q1 mem_dout 0 32 } } }
	learningRate { ap_none {  { learningRate in_data 0 32 } } }
}
