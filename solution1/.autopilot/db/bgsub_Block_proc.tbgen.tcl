set moduleName bgsub_Block_proc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {bgsub_Block__proc}
set C_modelType { void 0 }
set C_modelArgList { 
	{ init int 1 regular  }
	{ bgmodel float 32 regular {axi_master 2}  }
	{ bgmodel1 int 32 regular  }
	{ frame_out int 8 regular {axi_master 2}  }
	{ frame_out2 int 32 regular  }
	{ frame_in int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "init", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bgmodel", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "frame_out", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "frame_out2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "frame_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 101
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ init sc_in sc_lv 1 signal 0 } 
	{ m_axi_bgmodel_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_bgmodel_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bgmodel_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bgmodel_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bgmodel_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bgmodel_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bgmodel_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_bgmodel_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_bgmodel_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bgmodel_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bgmodel_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bgmodel_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bgmodel_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bgmodel_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_bgmodel_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bgmodel_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bgmodel_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_BUSER sc_in sc_lv 1 signal 1 } 
	{ bgmodel1 sc_in sc_lv 32 signal 2 } 
	{ m_axi_frame_out_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_frame_out_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_frame_out_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_frame_out_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_frame_out_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_frame_out_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_frame_out_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_frame_out_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_frame_out_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_frame_out_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_frame_out_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_frame_out_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_frame_out_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_frame_out_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_frame_out_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_frame_out_WDATA sc_out sc_lv 8 signal 3 } 
	{ m_axi_frame_out_WSTRB sc_out sc_lv 1 signal 3 } 
	{ m_axi_frame_out_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_frame_out_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_frame_out_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_frame_out_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_frame_out_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_frame_out_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_frame_out_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_frame_out_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_frame_out_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_frame_out_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_frame_out_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_frame_out_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_frame_out_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_frame_out_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_frame_out_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_frame_out_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_frame_out_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_frame_out_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_frame_out_RDATA sc_in sc_lv 8 signal 3 } 
	{ m_axi_frame_out_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_frame_out_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_frame_out_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_frame_out_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_frame_out_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_frame_out_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_frame_out_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_frame_out_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_frame_out_BUSER sc_in sc_lv 1 signal 3 } 
	{ frame_out2 sc_in sc_lv 32 signal 4 } 
	{ frame_in sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "init", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "init", "role": "default" }} , 
 	{ "name": "m_axi_bgmodel_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bgmodel_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bgmodel_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bgmodel_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWID" }} , 
 	{ "name": "m_axi_bgmodel_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bgmodel_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bgmodel_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bgmodel_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bgmodel_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bgmodel_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bgmodel_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bgmodel_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bgmodel_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bgmodel_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "WVALID" }} , 
 	{ "name": "m_axi_bgmodel_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "WREADY" }} , 
 	{ "name": "m_axi_bgmodel_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel", "role": "WDATA" }} , 
 	{ "name": "m_axi_bgmodel_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bgmodel_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "WLAST" }} , 
 	{ "name": "m_axi_bgmodel_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "WID" }} , 
 	{ "name": "m_axi_bgmodel_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "WUSER" }} , 
 	{ "name": "m_axi_bgmodel_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bgmodel_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bgmodel_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bgmodel_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARID" }} , 
 	{ "name": "m_axi_bgmodel_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bgmodel_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bgmodel_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bgmodel_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bgmodel_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bgmodel_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bgmodel_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bgmodel_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bgmodel_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bgmodel_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "RVALID" }} , 
 	{ "name": "m_axi_bgmodel_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "RREADY" }} , 
 	{ "name": "m_axi_bgmodel_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel", "role": "RDATA" }} , 
 	{ "name": "m_axi_bgmodel_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "RLAST" }} , 
 	{ "name": "m_axi_bgmodel_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "RID" }} , 
 	{ "name": "m_axi_bgmodel_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "RUSER" }} , 
 	{ "name": "m_axi_bgmodel_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel", "role": "RRESP" }} , 
 	{ "name": "m_axi_bgmodel_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "BVALID" }} , 
 	{ "name": "m_axi_bgmodel_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "BREADY" }} , 
 	{ "name": "m_axi_bgmodel_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel", "role": "BRESP" }} , 
 	{ "name": "m_axi_bgmodel_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "BID" }} , 
 	{ "name": "m_axi_bgmodel_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel", "role": "BUSER" }} , 
 	{ "name": "bgmodel1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel1", "role": "default" }} , 
 	{ "name": "m_axi_frame_out_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "AWVALID" }} , 
 	{ "name": "m_axi_frame_out_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "AWREADY" }} , 
 	{ "name": "m_axi_frame_out_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame_out", "role": "AWADDR" }} , 
 	{ "name": "m_axi_frame_out_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "AWID" }} , 
 	{ "name": "m_axi_frame_out_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame_out", "role": "AWLEN" }} , 
 	{ "name": "m_axi_frame_out_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "frame_out", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_frame_out_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "frame_out", "role": "AWBURST" }} , 
 	{ "name": "m_axi_frame_out_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "frame_out", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_frame_out_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "frame_out", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_frame_out_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "frame_out", "role": "AWPROT" }} , 
 	{ "name": "m_axi_frame_out_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "frame_out", "role": "AWQOS" }} , 
 	{ "name": "m_axi_frame_out_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "frame_out", "role": "AWREGION" }} , 
 	{ "name": "m_axi_frame_out_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "AWUSER" }} , 
 	{ "name": "m_axi_frame_out_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "WVALID" }} , 
 	{ "name": "m_axi_frame_out_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "WREADY" }} , 
 	{ "name": "m_axi_frame_out_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_out", "role": "WDATA" }} , 
 	{ "name": "m_axi_frame_out_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "WSTRB" }} , 
 	{ "name": "m_axi_frame_out_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "WLAST" }} , 
 	{ "name": "m_axi_frame_out_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "WID" }} , 
 	{ "name": "m_axi_frame_out_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "WUSER" }} , 
 	{ "name": "m_axi_frame_out_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "ARVALID" }} , 
 	{ "name": "m_axi_frame_out_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "ARREADY" }} , 
 	{ "name": "m_axi_frame_out_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame_out", "role": "ARADDR" }} , 
 	{ "name": "m_axi_frame_out_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "ARID" }} , 
 	{ "name": "m_axi_frame_out_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame_out", "role": "ARLEN" }} , 
 	{ "name": "m_axi_frame_out_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "frame_out", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_frame_out_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "frame_out", "role": "ARBURST" }} , 
 	{ "name": "m_axi_frame_out_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "frame_out", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_frame_out_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "frame_out", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_frame_out_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "frame_out", "role": "ARPROT" }} , 
 	{ "name": "m_axi_frame_out_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "frame_out", "role": "ARQOS" }} , 
 	{ "name": "m_axi_frame_out_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "frame_out", "role": "ARREGION" }} , 
 	{ "name": "m_axi_frame_out_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "ARUSER" }} , 
 	{ "name": "m_axi_frame_out_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "RVALID" }} , 
 	{ "name": "m_axi_frame_out_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "RREADY" }} , 
 	{ "name": "m_axi_frame_out_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_out", "role": "RDATA" }} , 
 	{ "name": "m_axi_frame_out_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "RLAST" }} , 
 	{ "name": "m_axi_frame_out_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "RID" }} , 
 	{ "name": "m_axi_frame_out_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "RUSER" }} , 
 	{ "name": "m_axi_frame_out_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "frame_out", "role": "RRESP" }} , 
 	{ "name": "m_axi_frame_out_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "BVALID" }} , 
 	{ "name": "m_axi_frame_out_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "BREADY" }} , 
 	{ "name": "m_axi_frame_out_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "frame_out", "role": "BRESP" }} , 
 	{ "name": "m_axi_frame_out_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "BID" }} , 
 	{ "name": "m_axi_frame_out_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out", "role": "BUSER" }} , 
 	{ "name": "frame_out2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame_out2", "role": "default" }} , 
 	{ "name": "frame_in", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame_in", "role": "default" }}  ]}
set Spec2ImplPortList { 
	init { ap_none {  { init in_data 0 1 } } }
	bgmodel { m_axi {  { m_axi_bgmodel_AWVALID VALID 1 1 }  { m_axi_bgmodel_AWREADY READY 0 1 }  { m_axi_bgmodel_AWADDR ADDR 1 32 }  { m_axi_bgmodel_AWID ID 1 1 }  { m_axi_bgmodel_AWLEN LEN 1 32 }  { m_axi_bgmodel_AWSIZE SIZE 1 3 }  { m_axi_bgmodel_AWBURST BURST 1 2 }  { m_axi_bgmodel_AWLOCK LOCK 1 2 }  { m_axi_bgmodel_AWCACHE CACHE 1 4 }  { m_axi_bgmodel_AWPROT PROT 1 3 }  { m_axi_bgmodel_AWQOS QOS 1 4 }  { m_axi_bgmodel_AWREGION REGION 1 4 }  { m_axi_bgmodel_AWUSER USER 1 1 }  { m_axi_bgmodel_WVALID VALID 1 1 }  { m_axi_bgmodel_WREADY READY 0 1 }  { m_axi_bgmodel_WDATA DATA 1 32 }  { m_axi_bgmodel_WSTRB STRB 1 4 }  { m_axi_bgmodel_WLAST LAST 1 1 }  { m_axi_bgmodel_WID ID 1 1 }  { m_axi_bgmodel_WUSER USER 1 1 }  { m_axi_bgmodel_ARVALID VALID 1 1 }  { m_axi_bgmodel_ARREADY READY 0 1 }  { m_axi_bgmodel_ARADDR ADDR 1 32 }  { m_axi_bgmodel_ARID ID 1 1 }  { m_axi_bgmodel_ARLEN LEN 1 32 }  { m_axi_bgmodel_ARSIZE SIZE 1 3 }  { m_axi_bgmodel_ARBURST BURST 1 2 }  { m_axi_bgmodel_ARLOCK LOCK 1 2 }  { m_axi_bgmodel_ARCACHE CACHE 1 4 }  { m_axi_bgmodel_ARPROT PROT 1 3 }  { m_axi_bgmodel_ARQOS QOS 1 4 }  { m_axi_bgmodel_ARREGION REGION 1 4 }  { m_axi_bgmodel_ARUSER USER 1 1 }  { m_axi_bgmodel_RVALID VALID 0 1 }  { m_axi_bgmodel_RREADY READY 1 1 }  { m_axi_bgmodel_RDATA DATA 0 32 }  { m_axi_bgmodel_RLAST LAST 0 1 }  { m_axi_bgmodel_RID ID 0 1 }  { m_axi_bgmodel_RUSER USER 0 1 }  { m_axi_bgmodel_RRESP RESP 0 2 }  { m_axi_bgmodel_BVALID VALID 0 1 }  { m_axi_bgmodel_BREADY READY 1 1 }  { m_axi_bgmodel_BRESP RESP 0 2 }  { m_axi_bgmodel_BID ID 0 1 }  { m_axi_bgmodel_BUSER USER 0 1 } } }
	bgmodel1 { ap_none {  { bgmodel1 in_data 0 32 } } }
	frame_out { m_axi {  { m_axi_frame_out_AWVALID VALID 1 1 }  { m_axi_frame_out_AWREADY READY 0 1 }  { m_axi_frame_out_AWADDR ADDR 1 32 }  { m_axi_frame_out_AWID ID 1 1 }  { m_axi_frame_out_AWLEN LEN 1 32 }  { m_axi_frame_out_AWSIZE SIZE 1 3 }  { m_axi_frame_out_AWBURST BURST 1 2 }  { m_axi_frame_out_AWLOCK LOCK 1 2 }  { m_axi_frame_out_AWCACHE CACHE 1 4 }  { m_axi_frame_out_AWPROT PROT 1 3 }  { m_axi_frame_out_AWQOS QOS 1 4 }  { m_axi_frame_out_AWREGION REGION 1 4 }  { m_axi_frame_out_AWUSER USER 1 1 }  { m_axi_frame_out_WVALID VALID 1 1 }  { m_axi_frame_out_WREADY READY 0 1 }  { m_axi_frame_out_WDATA DATA 1 8 }  { m_axi_frame_out_WSTRB STRB 1 1 }  { m_axi_frame_out_WLAST LAST 1 1 }  { m_axi_frame_out_WID ID 1 1 }  { m_axi_frame_out_WUSER USER 1 1 }  { m_axi_frame_out_ARVALID VALID 1 1 }  { m_axi_frame_out_ARREADY READY 0 1 }  { m_axi_frame_out_ARADDR ADDR 1 32 }  { m_axi_frame_out_ARID ID 1 1 }  { m_axi_frame_out_ARLEN LEN 1 32 }  { m_axi_frame_out_ARSIZE SIZE 1 3 }  { m_axi_frame_out_ARBURST BURST 1 2 }  { m_axi_frame_out_ARLOCK LOCK 1 2 }  { m_axi_frame_out_ARCACHE CACHE 1 4 }  { m_axi_frame_out_ARPROT PROT 1 3 }  { m_axi_frame_out_ARQOS QOS 1 4 }  { m_axi_frame_out_ARREGION REGION 1 4 }  { m_axi_frame_out_ARUSER USER 1 1 }  { m_axi_frame_out_RVALID VALID 0 1 }  { m_axi_frame_out_RREADY READY 1 1 }  { m_axi_frame_out_RDATA DATA 0 8 }  { m_axi_frame_out_RLAST LAST 0 1 }  { m_axi_frame_out_RID ID 0 1 }  { m_axi_frame_out_RUSER USER 0 1 }  { m_axi_frame_out_RRESP RESP 0 2 }  { m_axi_frame_out_BVALID VALID 0 1 }  { m_axi_frame_out_BREADY READY 1 1 }  { m_axi_frame_out_BRESP RESP 0 2 }  { m_axi_frame_out_BID ID 0 1 }  { m_axi_frame_out_BUSER USER 0 1 } } }
	frame_out2 { ap_none {  { frame_out2 in_data 0 32 } } }
	frame_in { ap_none {  { frame_in in_data 0 32 } } }
}
