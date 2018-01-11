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
	{ bgmodel_sortKey float 32 regular {axi_master 2}  }
	{ bgmodel_sortKey1 int 32 regular  }
	{ bgmodel_weight int 32 regular  }
	{ bgmodel_mean int 32 regular  }
	{ bgmodel_var int 32 regular  }
	{ frame_out int 8 regular {axi_master 2}  }
	{ frame_out2 int 32 regular  }
	{ frame_in int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "init", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bgmodel_sortKey", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_sortKey1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bgmodel_weight", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bgmodel_mean", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bgmodel_var", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "frame_out", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "frame_out2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "frame_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 104
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ init sc_in sc_lv 1 signal 0 } 
	{ m_axi_bgmodel_sortKey_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_bgmodel_sortKey_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bgmodel_sortKey_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bgmodel_sortKey_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bgmodel_sortKey_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bgmodel_sortKey_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_sortKey_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bgmodel_sortKey_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_sortKey_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_sortKey_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_bgmodel_sortKey_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_sortKey_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bgmodel_sortKey_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_bgmodel_sortKey_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bgmodel_sortKey_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bgmodel_sortKey_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bgmodel_sortKey_BUSER sc_in sc_lv 1 signal 1 } 
	{ bgmodel_sortKey1 sc_in sc_lv 32 signal 2 } 
	{ bgmodel_weight sc_in sc_lv 32 signal 3 } 
	{ bgmodel_mean sc_in sc_lv 32 signal 4 } 
	{ bgmodel_var sc_in sc_lv 32 signal 5 } 
	{ m_axi_frame_out_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_frame_out_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_frame_out_AWADDR sc_out sc_lv 32 signal 6 } 
	{ m_axi_frame_out_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_frame_out_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_frame_out_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_frame_out_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_frame_out_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_frame_out_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_frame_out_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_frame_out_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_frame_out_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_frame_out_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_frame_out_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_frame_out_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_frame_out_WDATA sc_out sc_lv 8 signal 6 } 
	{ m_axi_frame_out_WSTRB sc_out sc_lv 1 signal 6 } 
	{ m_axi_frame_out_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_frame_out_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_frame_out_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_frame_out_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_frame_out_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_frame_out_ARADDR sc_out sc_lv 32 signal 6 } 
	{ m_axi_frame_out_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_frame_out_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_frame_out_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_frame_out_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_frame_out_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_frame_out_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_frame_out_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_frame_out_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_frame_out_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_frame_out_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_frame_out_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_frame_out_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_frame_out_RDATA sc_in sc_lv 8 signal 6 } 
	{ m_axi_frame_out_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_frame_out_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_frame_out_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_frame_out_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_frame_out_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_frame_out_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_frame_out_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_frame_out_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_frame_out_BUSER sc_in sc_lv 1 signal 6 } 
	{ frame_out2 sc_in sc_lv 32 signal 7 } 
	{ frame_in sc_in sc_lv 32 signal 8 } 
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
 	{ "name": "m_axi_bgmodel_sortKey_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWID" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "WVALID" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "WREADY" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "WDATA" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "WLAST" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "WID" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "WUSER" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARID" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "RVALID" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "RREADY" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "RDATA" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "RLAST" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "RID" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "RUSER" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "RRESP" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "BVALID" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "BREADY" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "BRESP" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "BID" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "BUSER" }} , 
 	{ "name": "bgmodel_sortKey1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_sortKey1", "role": "default" }} , 
 	{ "name": "bgmodel_weight", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "default" }} , 
 	{ "name": "bgmodel_mean", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "default" }} , 
 	{ "name": "bgmodel_var", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "default" }} , 
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
	bgmodel_sortKey { m_axi {  { m_axi_bgmodel_sortKey_AWVALID VALID 1 1 }  { m_axi_bgmodel_sortKey_AWREADY READY 0 1 }  { m_axi_bgmodel_sortKey_AWADDR ADDR 1 32 }  { m_axi_bgmodel_sortKey_AWID ID 1 1 }  { m_axi_bgmodel_sortKey_AWLEN LEN 1 32 }  { m_axi_bgmodel_sortKey_AWSIZE SIZE 1 3 }  { m_axi_bgmodel_sortKey_AWBURST BURST 1 2 }  { m_axi_bgmodel_sortKey_AWLOCK LOCK 1 2 }  { m_axi_bgmodel_sortKey_AWCACHE CACHE 1 4 }  { m_axi_bgmodel_sortKey_AWPROT PROT 1 3 }  { m_axi_bgmodel_sortKey_AWQOS QOS 1 4 }  { m_axi_bgmodel_sortKey_AWREGION REGION 1 4 }  { m_axi_bgmodel_sortKey_AWUSER USER 1 1 }  { m_axi_bgmodel_sortKey_WVALID VALID 1 1 }  { m_axi_bgmodel_sortKey_WREADY READY 0 1 }  { m_axi_bgmodel_sortKey_WDATA DATA 1 32 }  { m_axi_bgmodel_sortKey_WSTRB STRB 1 4 }  { m_axi_bgmodel_sortKey_WLAST LAST 1 1 }  { m_axi_bgmodel_sortKey_WID ID 1 1 }  { m_axi_bgmodel_sortKey_WUSER USER 1 1 }  { m_axi_bgmodel_sortKey_ARVALID VALID 1 1 }  { m_axi_bgmodel_sortKey_ARREADY READY 0 1 }  { m_axi_bgmodel_sortKey_ARADDR ADDR 1 32 }  { m_axi_bgmodel_sortKey_ARID ID 1 1 }  { m_axi_bgmodel_sortKey_ARLEN LEN 1 32 }  { m_axi_bgmodel_sortKey_ARSIZE SIZE 1 3 }  { m_axi_bgmodel_sortKey_ARBURST BURST 1 2 }  { m_axi_bgmodel_sortKey_ARLOCK LOCK 1 2 }  { m_axi_bgmodel_sortKey_ARCACHE CACHE 1 4 }  { m_axi_bgmodel_sortKey_ARPROT PROT 1 3 }  { m_axi_bgmodel_sortKey_ARQOS QOS 1 4 }  { m_axi_bgmodel_sortKey_ARREGION REGION 1 4 }  { m_axi_bgmodel_sortKey_ARUSER USER 1 1 }  { m_axi_bgmodel_sortKey_RVALID VALID 0 1 }  { m_axi_bgmodel_sortKey_RREADY READY 1 1 }  { m_axi_bgmodel_sortKey_RDATA DATA 0 32 }  { m_axi_bgmodel_sortKey_RLAST LAST 0 1 }  { m_axi_bgmodel_sortKey_RID ID 0 1 }  { m_axi_bgmodel_sortKey_RUSER USER 0 1 }  { m_axi_bgmodel_sortKey_RRESP RESP 0 2 }  { m_axi_bgmodel_sortKey_BVALID VALID 0 1 }  { m_axi_bgmodel_sortKey_BREADY READY 1 1 }  { m_axi_bgmodel_sortKey_BRESP RESP 0 2 }  { m_axi_bgmodel_sortKey_BID ID 0 1 }  { m_axi_bgmodel_sortKey_BUSER USER 0 1 } } }
	bgmodel_sortKey1 { ap_none {  { bgmodel_sortKey1 in_data 0 32 } } }
	bgmodel_weight { ap_none {  { bgmodel_weight in_data 0 32 } } }
	bgmodel_mean { ap_none {  { bgmodel_mean in_data 0 32 } } }
	bgmodel_var { ap_none {  { bgmodel_var in_data 0 32 } } }
	frame_out { m_axi {  { m_axi_frame_out_AWVALID VALID 1 1 }  { m_axi_frame_out_AWREADY READY 0 1 }  { m_axi_frame_out_AWADDR ADDR 1 32 }  { m_axi_frame_out_AWID ID 1 1 }  { m_axi_frame_out_AWLEN LEN 1 32 }  { m_axi_frame_out_AWSIZE SIZE 1 3 }  { m_axi_frame_out_AWBURST BURST 1 2 }  { m_axi_frame_out_AWLOCK LOCK 1 2 }  { m_axi_frame_out_AWCACHE CACHE 1 4 }  { m_axi_frame_out_AWPROT PROT 1 3 }  { m_axi_frame_out_AWQOS QOS 1 4 }  { m_axi_frame_out_AWREGION REGION 1 4 }  { m_axi_frame_out_AWUSER USER 1 1 }  { m_axi_frame_out_WVALID VALID 1 1 }  { m_axi_frame_out_WREADY READY 0 1 }  { m_axi_frame_out_WDATA DATA 1 8 }  { m_axi_frame_out_WSTRB STRB 1 1 }  { m_axi_frame_out_WLAST LAST 1 1 }  { m_axi_frame_out_WID ID 1 1 }  { m_axi_frame_out_WUSER USER 1 1 }  { m_axi_frame_out_ARVALID VALID 1 1 }  { m_axi_frame_out_ARREADY READY 0 1 }  { m_axi_frame_out_ARADDR ADDR 1 32 }  { m_axi_frame_out_ARID ID 1 1 }  { m_axi_frame_out_ARLEN LEN 1 32 }  { m_axi_frame_out_ARSIZE SIZE 1 3 }  { m_axi_frame_out_ARBURST BURST 1 2 }  { m_axi_frame_out_ARLOCK LOCK 1 2 }  { m_axi_frame_out_ARCACHE CACHE 1 4 }  { m_axi_frame_out_ARPROT PROT 1 3 }  { m_axi_frame_out_ARQOS QOS 1 4 }  { m_axi_frame_out_ARREGION REGION 1 4 }  { m_axi_frame_out_ARUSER USER 1 1 }  { m_axi_frame_out_RVALID VALID 0 1 }  { m_axi_frame_out_RREADY READY 1 1 }  { m_axi_frame_out_RDATA DATA 0 8 }  { m_axi_frame_out_RLAST LAST 0 1 }  { m_axi_frame_out_RID ID 0 1 }  { m_axi_frame_out_RUSER USER 0 1 }  { m_axi_frame_out_RRESP RESP 0 2 }  { m_axi_frame_out_BVALID VALID 0 1 }  { m_axi_frame_out_BREADY READY 1 1 }  { m_axi_frame_out_BRESP RESP 0 2 }  { m_axi_frame_out_BID ID 0 1 }  { m_axi_frame_out_BUSER USER 0 1 } } }
	frame_out2 { ap_none {  { frame_out2 in_data 0 32 } } }
	frame_in { ap_none {  { frame_in in_data 0 32 } } }
}
