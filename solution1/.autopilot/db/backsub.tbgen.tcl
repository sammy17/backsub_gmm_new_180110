set C_TypeInfoList {{ 
"backsub" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"frame_i": [[], {"array": ["0", [76800]]}] }, {"frame_o": [[], {"array": ["0", [76800]]}] }, {"learningRate": [[], {"scalar": "float"}] }, {"bgmodel": [[], {"array": ["1", [153600]]}] }],["2","3","4","5"],""],
 "2": [ "nframes", [[], {"scalar": "int"}],""],
 "3": [ "frame_out_glob", [[], {"array": ["0", [7680]]}],""],
 "4": [ "frame_in_glob", [[], {"array": ["0", [7680]]}],""],
 "5": [ "bgmo", [[], {"array": ["1", [15360]]}],""], 
"1": [ "MixData", {"struct": [[],[],[{ "sortKey": [[],  {"scalar": "float"}]},{ "weight": [[],  {"scalar": "float"}]},{ "mean": [[],  {"scalar": "float"}]},{ "var": [[],  {"scalar": "float"}]}],""]}], 
"0": [ "uint8_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}]
}}
set moduleName backsub
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {backsub}
set C_modelType { void 0 }
set C_modelArgList { 
	{ gmem int 8 regular {axi_master 2}  }
	{ frame_i int 32 regular {axi_slave 0}  }
	{ frame_o int 32 regular {axi_slave 0}  }
	{ learningRate float 32 regular {axi_slave 0}  }
	{ bgmodel_sortKey float 32 regular {axi_master 2}  }
	{ bgmodel_weight float 32 regular {axi_master 2}  }
	{ bgmodel_mean float 32 regular {axi_master 2}  }
	{ bgmodel_var float 32 regular {axi_master 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "frame_i","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "frame_i","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 76799,"step" : 1}]},{"cName": "frame_o","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "frame_o","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 76799,"step" : 1}]}]}]} , 
 	{ "Name" : "frame_i", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "frame_o", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "learningRate", "interface" : "axi_slave", "bundle":"CRTL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "learningRate","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "bgmodel_sortKey", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bgmodel.sortKey","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 153599,"step" : 1}]}]}]} , 
 	{ "Name" : "bgmodel_weight", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bgmodel.weight","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 153599,"step" : 1}]}]}]} , 
 	{ "Name" : "bgmodel_mean", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bgmodel.mean","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 153599,"step" : 1}]}]}]} , 
 	{ "Name" : "bgmodel_var", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bgmodel.var","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 153599,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 265
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_bgmodel_sortKey_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_AWADDR sc_out sc_lv 32 signal 4 } 
	{ m_axi_bgmodel_sortKey_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_bgmodel_sortKey_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_bgmodel_sortKey_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_bgmodel_sortKey_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_bgmodel_sortKey_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_bgmodel_sortKey_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_bgmodel_sortKey_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_bgmodel_sortKey_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_bgmodel_sortKey_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_bgmodel_sortKey_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_bgmodel_sortKey_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARADDR sc_out sc_lv 32 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_bgmodel_sortKey_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_bgmodel_sortKey_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_bgmodel_sortKey_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_bgmodel_sortKey_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_bgmodel_sortKey_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_bgmodel_weight_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_bgmodel_weight_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_bgmodel_weight_AWADDR sc_out sc_lv 32 signal 5 } 
	{ m_axi_bgmodel_weight_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_bgmodel_weight_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_bgmodel_weight_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_bgmodel_weight_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_bgmodel_weight_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_bgmodel_weight_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_bgmodel_weight_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_bgmodel_weight_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_bgmodel_weight_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_bgmodel_weight_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_bgmodel_weight_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_bgmodel_weight_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_bgmodel_weight_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_bgmodel_weight_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_bgmodel_weight_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_bgmodel_weight_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_bgmodel_weight_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_bgmodel_weight_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_bgmodel_weight_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_bgmodel_weight_ARADDR sc_out sc_lv 32 signal 5 } 
	{ m_axi_bgmodel_weight_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_bgmodel_weight_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_bgmodel_weight_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_bgmodel_weight_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_bgmodel_weight_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_bgmodel_weight_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_bgmodel_weight_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_bgmodel_weight_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_bgmodel_weight_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_bgmodel_weight_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_bgmodel_weight_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_bgmodel_weight_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_bgmodel_weight_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_bgmodel_weight_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_bgmodel_weight_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_bgmodel_weight_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_bgmodel_weight_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_bgmodel_weight_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_bgmodel_weight_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_bgmodel_weight_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_bgmodel_weight_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_bgmodel_weight_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_bgmodel_mean_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_bgmodel_mean_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_bgmodel_mean_AWADDR sc_out sc_lv 32 signal 6 } 
	{ m_axi_bgmodel_mean_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_bgmodel_mean_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_bgmodel_mean_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_bgmodel_mean_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_bgmodel_mean_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_bgmodel_mean_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_bgmodel_mean_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_bgmodel_mean_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_bgmodel_mean_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_bgmodel_mean_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_bgmodel_mean_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_bgmodel_mean_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_bgmodel_mean_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_bgmodel_mean_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_bgmodel_mean_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_bgmodel_mean_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_bgmodel_mean_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_bgmodel_mean_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_bgmodel_mean_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_bgmodel_mean_ARADDR sc_out sc_lv 32 signal 6 } 
	{ m_axi_bgmodel_mean_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_bgmodel_mean_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_bgmodel_mean_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_bgmodel_mean_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_bgmodel_mean_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_bgmodel_mean_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_bgmodel_mean_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_bgmodel_mean_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_bgmodel_mean_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_bgmodel_mean_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_bgmodel_mean_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_bgmodel_mean_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_bgmodel_mean_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_bgmodel_mean_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_bgmodel_mean_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_bgmodel_mean_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_bgmodel_mean_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_bgmodel_mean_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_bgmodel_mean_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_bgmodel_mean_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_bgmodel_mean_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_bgmodel_mean_BUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_bgmodel_var_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_bgmodel_var_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_bgmodel_var_AWADDR sc_out sc_lv 32 signal 7 } 
	{ m_axi_bgmodel_var_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_bgmodel_var_AWLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_bgmodel_var_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_bgmodel_var_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_bgmodel_var_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_bgmodel_var_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_bgmodel_var_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_bgmodel_var_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_bgmodel_var_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_bgmodel_var_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_bgmodel_var_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_bgmodel_var_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_bgmodel_var_WDATA sc_out sc_lv 32 signal 7 } 
	{ m_axi_bgmodel_var_WSTRB sc_out sc_lv 4 signal 7 } 
	{ m_axi_bgmodel_var_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_bgmodel_var_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_bgmodel_var_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_bgmodel_var_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_bgmodel_var_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_bgmodel_var_ARADDR sc_out sc_lv 32 signal 7 } 
	{ m_axi_bgmodel_var_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_bgmodel_var_ARLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_bgmodel_var_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_bgmodel_var_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_bgmodel_var_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_bgmodel_var_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_bgmodel_var_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_bgmodel_var_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_bgmodel_var_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_bgmodel_var_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_bgmodel_var_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_bgmodel_var_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_bgmodel_var_RDATA sc_in sc_lv 32 signal 7 } 
	{ m_axi_bgmodel_var_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_bgmodel_var_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_bgmodel_var_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_bgmodel_var_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_bgmodel_var_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_bgmodel_var_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_bgmodel_var_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_bgmodel_var_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_bgmodel_var_BUSER sc_in sc_lv 1 signal 7 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CRTL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CRTL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CRTL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CRTL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CRTL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CRTL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CRTL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"frame_i","role":"data","value":"16"},{"name":"frame_o","role":"data","value":"24"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "s_axi_CRTL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "AWADDR" },"address":[{"name":"learningRate","role":"data","value":"16"}] },
	{ "name": "s_axi_CRTL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CRTL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CRTL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CRTL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CRTL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CRTL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CRTL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_CRTL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CRTL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CRTL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CRTL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CRTL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CRTL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CRTL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CRTL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CRTL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWID" }} , 
 	{ "name": "m_axi_bgmodel_sortKey_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_bgmodel_sortKey_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bgmodel_sortKey", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_bgmodel_weight_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bgmodel_weight_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bgmodel_weight_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bgmodel_weight_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWID" }} , 
 	{ "name": "m_axi_bgmodel_weight_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bgmodel_weight_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bgmodel_weight_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bgmodel_weight_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bgmodel_weight_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bgmodel_weight_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bgmodel_weight_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bgmodel_weight_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bgmodel_weight_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bgmodel_weight_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "WVALID" }} , 
 	{ "name": "m_axi_bgmodel_weight_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "WREADY" }} , 
 	{ "name": "m_axi_bgmodel_weight_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "WDATA" }} , 
 	{ "name": "m_axi_bgmodel_weight_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bgmodel_weight_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "WLAST" }} , 
 	{ "name": "m_axi_bgmodel_weight_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "WID" }} , 
 	{ "name": "m_axi_bgmodel_weight_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "WUSER" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARID" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bgmodel_weight_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bgmodel_weight_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "RVALID" }} , 
 	{ "name": "m_axi_bgmodel_weight_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "RREADY" }} , 
 	{ "name": "m_axi_bgmodel_weight_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "RDATA" }} , 
 	{ "name": "m_axi_bgmodel_weight_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "RLAST" }} , 
 	{ "name": "m_axi_bgmodel_weight_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "RID" }} , 
 	{ "name": "m_axi_bgmodel_weight_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "RUSER" }} , 
 	{ "name": "m_axi_bgmodel_weight_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "RRESP" }} , 
 	{ "name": "m_axi_bgmodel_weight_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "BVALID" }} , 
 	{ "name": "m_axi_bgmodel_weight_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "BREADY" }} , 
 	{ "name": "m_axi_bgmodel_weight_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "BRESP" }} , 
 	{ "name": "m_axi_bgmodel_weight_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "BID" }} , 
 	{ "name": "m_axi_bgmodel_weight_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_weight", "role": "BUSER" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWID" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bgmodel_mean_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bgmodel_mean_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "WVALID" }} , 
 	{ "name": "m_axi_bgmodel_mean_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "WREADY" }} , 
 	{ "name": "m_axi_bgmodel_mean_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "WDATA" }} , 
 	{ "name": "m_axi_bgmodel_mean_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bgmodel_mean_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "WLAST" }} , 
 	{ "name": "m_axi_bgmodel_mean_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "WID" }} , 
 	{ "name": "m_axi_bgmodel_mean_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "WUSER" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARID" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bgmodel_mean_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bgmodel_mean_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "RVALID" }} , 
 	{ "name": "m_axi_bgmodel_mean_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "RREADY" }} , 
 	{ "name": "m_axi_bgmodel_mean_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "RDATA" }} , 
 	{ "name": "m_axi_bgmodel_mean_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "RLAST" }} , 
 	{ "name": "m_axi_bgmodel_mean_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "RID" }} , 
 	{ "name": "m_axi_bgmodel_mean_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "RUSER" }} , 
 	{ "name": "m_axi_bgmodel_mean_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "RRESP" }} , 
 	{ "name": "m_axi_bgmodel_mean_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "BVALID" }} , 
 	{ "name": "m_axi_bgmodel_mean_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "BREADY" }} , 
 	{ "name": "m_axi_bgmodel_mean_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "BRESP" }} , 
 	{ "name": "m_axi_bgmodel_mean_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "BID" }} , 
 	{ "name": "m_axi_bgmodel_mean_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_mean", "role": "BUSER" }} , 
 	{ "name": "m_axi_bgmodel_var_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bgmodel_var_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bgmodel_var_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bgmodel_var_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWID" }} , 
 	{ "name": "m_axi_bgmodel_var_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bgmodel_var_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bgmodel_var_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bgmodel_var_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bgmodel_var_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bgmodel_var_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bgmodel_var_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bgmodel_var_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bgmodel_var_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bgmodel_var_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "WVALID" }} , 
 	{ "name": "m_axi_bgmodel_var_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "WREADY" }} , 
 	{ "name": "m_axi_bgmodel_var_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "WDATA" }} , 
 	{ "name": "m_axi_bgmodel_var_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bgmodel_var_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "WLAST" }} , 
 	{ "name": "m_axi_bgmodel_var_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "WID" }} , 
 	{ "name": "m_axi_bgmodel_var_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "WUSER" }} , 
 	{ "name": "m_axi_bgmodel_var_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bgmodel_var_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bgmodel_var_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bgmodel_var_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARID" }} , 
 	{ "name": "m_axi_bgmodel_var_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bgmodel_var_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bgmodel_var_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bgmodel_var_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bgmodel_var_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bgmodel_var_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bgmodel_var_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bgmodel_var_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bgmodel_var_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bgmodel_var_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "RVALID" }} , 
 	{ "name": "m_axi_bgmodel_var_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "RREADY" }} , 
 	{ "name": "m_axi_bgmodel_var_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "RDATA" }} , 
 	{ "name": "m_axi_bgmodel_var_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "RLAST" }} , 
 	{ "name": "m_axi_bgmodel_var_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "RID" }} , 
 	{ "name": "m_axi_bgmodel_var_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "RUSER" }} , 
 	{ "name": "m_axi_bgmodel_var_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "RRESP" }} , 
 	{ "name": "m_axi_bgmodel_var_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "BVALID" }} , 
 	{ "name": "m_axi_bgmodel_var_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "BREADY" }} , 
 	{ "name": "m_axi_bgmodel_var_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "BRESP" }} , 
 	{ "name": "m_axi_bgmodel_var_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "BID" }} , 
 	{ "name": "m_axi_bgmodel_var_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_var", "role": "BUSER" }}  ]}
set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 32 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 32 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	bgmodel_sortKey { m_axi {  { m_axi_bgmodel_sortKey_AWVALID VALID 1 1 }  { m_axi_bgmodel_sortKey_AWREADY READY 0 1 }  { m_axi_bgmodel_sortKey_AWADDR ADDR 1 32 }  { m_axi_bgmodel_sortKey_AWID ID 1 1 }  { m_axi_bgmodel_sortKey_AWLEN LEN 1 8 }  { m_axi_bgmodel_sortKey_AWSIZE SIZE 1 3 }  { m_axi_bgmodel_sortKey_AWBURST BURST 1 2 }  { m_axi_bgmodel_sortKey_AWLOCK LOCK 1 2 }  { m_axi_bgmodel_sortKey_AWCACHE CACHE 1 4 }  { m_axi_bgmodel_sortKey_AWPROT PROT 1 3 }  { m_axi_bgmodel_sortKey_AWQOS QOS 1 4 }  { m_axi_bgmodel_sortKey_AWREGION REGION 1 4 }  { m_axi_bgmodel_sortKey_AWUSER USER 1 1 }  { m_axi_bgmodel_sortKey_WVALID VALID 1 1 }  { m_axi_bgmodel_sortKey_WREADY READY 0 1 }  { m_axi_bgmodel_sortKey_WDATA DATA 1 32 }  { m_axi_bgmodel_sortKey_WSTRB STRB 1 4 }  { m_axi_bgmodel_sortKey_WLAST LAST 1 1 }  { m_axi_bgmodel_sortKey_WID ID 1 1 }  { m_axi_bgmodel_sortKey_WUSER USER 1 1 }  { m_axi_bgmodel_sortKey_ARVALID VALID 1 1 }  { m_axi_bgmodel_sortKey_ARREADY READY 0 1 }  { m_axi_bgmodel_sortKey_ARADDR ADDR 1 32 }  { m_axi_bgmodel_sortKey_ARID ID 1 1 }  { m_axi_bgmodel_sortKey_ARLEN LEN 1 8 }  { m_axi_bgmodel_sortKey_ARSIZE SIZE 1 3 }  { m_axi_bgmodel_sortKey_ARBURST BURST 1 2 }  { m_axi_bgmodel_sortKey_ARLOCK LOCK 1 2 }  { m_axi_bgmodel_sortKey_ARCACHE CACHE 1 4 }  { m_axi_bgmodel_sortKey_ARPROT PROT 1 3 }  { m_axi_bgmodel_sortKey_ARQOS QOS 1 4 }  { m_axi_bgmodel_sortKey_ARREGION REGION 1 4 }  { m_axi_bgmodel_sortKey_ARUSER USER 1 1 }  { m_axi_bgmodel_sortKey_RVALID VALID 0 1 }  { m_axi_bgmodel_sortKey_RREADY READY 1 1 }  { m_axi_bgmodel_sortKey_RDATA DATA 0 32 }  { m_axi_bgmodel_sortKey_RLAST LAST 0 1 }  { m_axi_bgmodel_sortKey_RID ID 0 1 }  { m_axi_bgmodel_sortKey_RUSER USER 0 1 }  { m_axi_bgmodel_sortKey_RRESP RESP 0 2 }  { m_axi_bgmodel_sortKey_BVALID VALID 0 1 }  { m_axi_bgmodel_sortKey_BREADY READY 1 1 }  { m_axi_bgmodel_sortKey_BRESP RESP 0 2 }  { m_axi_bgmodel_sortKey_BID ID 0 1 }  { m_axi_bgmodel_sortKey_BUSER USER 0 1 } } }
	bgmodel_weight { m_axi {  { m_axi_bgmodel_weight_AWVALID VALID 1 1 }  { m_axi_bgmodel_weight_AWREADY READY 0 1 }  { m_axi_bgmodel_weight_AWADDR ADDR 1 32 }  { m_axi_bgmodel_weight_AWID ID 1 1 }  { m_axi_bgmodel_weight_AWLEN LEN 1 8 }  { m_axi_bgmodel_weight_AWSIZE SIZE 1 3 }  { m_axi_bgmodel_weight_AWBURST BURST 1 2 }  { m_axi_bgmodel_weight_AWLOCK LOCK 1 2 }  { m_axi_bgmodel_weight_AWCACHE CACHE 1 4 }  { m_axi_bgmodel_weight_AWPROT PROT 1 3 }  { m_axi_bgmodel_weight_AWQOS QOS 1 4 }  { m_axi_bgmodel_weight_AWREGION REGION 1 4 }  { m_axi_bgmodel_weight_AWUSER USER 1 1 }  { m_axi_bgmodel_weight_WVALID VALID 1 1 }  { m_axi_bgmodel_weight_WREADY READY 0 1 }  { m_axi_bgmodel_weight_WDATA DATA 1 32 }  { m_axi_bgmodel_weight_WSTRB STRB 1 4 }  { m_axi_bgmodel_weight_WLAST LAST 1 1 }  { m_axi_bgmodel_weight_WID ID 1 1 }  { m_axi_bgmodel_weight_WUSER USER 1 1 }  { m_axi_bgmodel_weight_ARVALID VALID 1 1 }  { m_axi_bgmodel_weight_ARREADY READY 0 1 }  { m_axi_bgmodel_weight_ARADDR ADDR 1 32 }  { m_axi_bgmodel_weight_ARID ID 1 1 }  { m_axi_bgmodel_weight_ARLEN LEN 1 8 }  { m_axi_bgmodel_weight_ARSIZE SIZE 1 3 }  { m_axi_bgmodel_weight_ARBURST BURST 1 2 }  { m_axi_bgmodel_weight_ARLOCK LOCK 1 2 }  { m_axi_bgmodel_weight_ARCACHE CACHE 1 4 }  { m_axi_bgmodel_weight_ARPROT PROT 1 3 }  { m_axi_bgmodel_weight_ARQOS QOS 1 4 }  { m_axi_bgmodel_weight_ARREGION REGION 1 4 }  { m_axi_bgmodel_weight_ARUSER USER 1 1 }  { m_axi_bgmodel_weight_RVALID VALID 0 1 }  { m_axi_bgmodel_weight_RREADY READY 1 1 }  { m_axi_bgmodel_weight_RDATA DATA 0 32 }  { m_axi_bgmodel_weight_RLAST LAST 0 1 }  { m_axi_bgmodel_weight_RID ID 0 1 }  { m_axi_bgmodel_weight_RUSER USER 0 1 }  { m_axi_bgmodel_weight_RRESP RESP 0 2 }  { m_axi_bgmodel_weight_BVALID VALID 0 1 }  { m_axi_bgmodel_weight_BREADY READY 1 1 }  { m_axi_bgmodel_weight_BRESP RESP 0 2 }  { m_axi_bgmodel_weight_BID ID 0 1 }  { m_axi_bgmodel_weight_BUSER USER 0 1 } } }
	bgmodel_mean { m_axi {  { m_axi_bgmodel_mean_AWVALID VALID 1 1 }  { m_axi_bgmodel_mean_AWREADY READY 0 1 }  { m_axi_bgmodel_mean_AWADDR ADDR 1 32 }  { m_axi_bgmodel_mean_AWID ID 1 1 }  { m_axi_bgmodel_mean_AWLEN LEN 1 8 }  { m_axi_bgmodel_mean_AWSIZE SIZE 1 3 }  { m_axi_bgmodel_mean_AWBURST BURST 1 2 }  { m_axi_bgmodel_mean_AWLOCK LOCK 1 2 }  { m_axi_bgmodel_mean_AWCACHE CACHE 1 4 }  { m_axi_bgmodel_mean_AWPROT PROT 1 3 }  { m_axi_bgmodel_mean_AWQOS QOS 1 4 }  { m_axi_bgmodel_mean_AWREGION REGION 1 4 }  { m_axi_bgmodel_mean_AWUSER USER 1 1 }  { m_axi_bgmodel_mean_WVALID VALID 1 1 }  { m_axi_bgmodel_mean_WREADY READY 0 1 }  { m_axi_bgmodel_mean_WDATA DATA 1 32 }  { m_axi_bgmodel_mean_WSTRB STRB 1 4 }  { m_axi_bgmodel_mean_WLAST LAST 1 1 }  { m_axi_bgmodel_mean_WID ID 1 1 }  { m_axi_bgmodel_mean_WUSER USER 1 1 }  { m_axi_bgmodel_mean_ARVALID VALID 1 1 }  { m_axi_bgmodel_mean_ARREADY READY 0 1 }  { m_axi_bgmodel_mean_ARADDR ADDR 1 32 }  { m_axi_bgmodel_mean_ARID ID 1 1 }  { m_axi_bgmodel_mean_ARLEN LEN 1 8 }  { m_axi_bgmodel_mean_ARSIZE SIZE 1 3 }  { m_axi_bgmodel_mean_ARBURST BURST 1 2 }  { m_axi_bgmodel_mean_ARLOCK LOCK 1 2 }  { m_axi_bgmodel_mean_ARCACHE CACHE 1 4 }  { m_axi_bgmodel_mean_ARPROT PROT 1 3 }  { m_axi_bgmodel_mean_ARQOS QOS 1 4 }  { m_axi_bgmodel_mean_ARREGION REGION 1 4 }  { m_axi_bgmodel_mean_ARUSER USER 1 1 }  { m_axi_bgmodel_mean_RVALID VALID 0 1 }  { m_axi_bgmodel_mean_RREADY READY 1 1 }  { m_axi_bgmodel_mean_RDATA DATA 0 32 }  { m_axi_bgmodel_mean_RLAST LAST 0 1 }  { m_axi_bgmodel_mean_RID ID 0 1 }  { m_axi_bgmodel_mean_RUSER USER 0 1 }  { m_axi_bgmodel_mean_RRESP RESP 0 2 }  { m_axi_bgmodel_mean_BVALID VALID 0 1 }  { m_axi_bgmodel_mean_BREADY READY 1 1 }  { m_axi_bgmodel_mean_BRESP RESP 0 2 }  { m_axi_bgmodel_mean_BID ID 0 1 }  { m_axi_bgmodel_mean_BUSER USER 0 1 } } }
	bgmodel_var { m_axi {  { m_axi_bgmodel_var_AWVALID VALID 1 1 }  { m_axi_bgmodel_var_AWREADY READY 0 1 }  { m_axi_bgmodel_var_AWADDR ADDR 1 32 }  { m_axi_bgmodel_var_AWID ID 1 1 }  { m_axi_bgmodel_var_AWLEN LEN 1 8 }  { m_axi_bgmodel_var_AWSIZE SIZE 1 3 }  { m_axi_bgmodel_var_AWBURST BURST 1 2 }  { m_axi_bgmodel_var_AWLOCK LOCK 1 2 }  { m_axi_bgmodel_var_AWCACHE CACHE 1 4 }  { m_axi_bgmodel_var_AWPROT PROT 1 3 }  { m_axi_bgmodel_var_AWQOS QOS 1 4 }  { m_axi_bgmodel_var_AWREGION REGION 1 4 }  { m_axi_bgmodel_var_AWUSER USER 1 1 }  { m_axi_bgmodel_var_WVALID VALID 1 1 }  { m_axi_bgmodel_var_WREADY READY 0 1 }  { m_axi_bgmodel_var_WDATA DATA 1 32 }  { m_axi_bgmodel_var_WSTRB STRB 1 4 }  { m_axi_bgmodel_var_WLAST LAST 1 1 }  { m_axi_bgmodel_var_WID ID 1 1 }  { m_axi_bgmodel_var_WUSER USER 1 1 }  { m_axi_bgmodel_var_ARVALID VALID 1 1 }  { m_axi_bgmodel_var_ARREADY READY 0 1 }  { m_axi_bgmodel_var_ARADDR ADDR 1 32 }  { m_axi_bgmodel_var_ARID ID 1 1 }  { m_axi_bgmodel_var_ARLEN LEN 1 8 }  { m_axi_bgmodel_var_ARSIZE SIZE 1 3 }  { m_axi_bgmodel_var_ARBURST BURST 1 2 }  { m_axi_bgmodel_var_ARLOCK LOCK 1 2 }  { m_axi_bgmodel_var_ARCACHE CACHE 1 4 }  { m_axi_bgmodel_var_ARPROT PROT 1 3 }  { m_axi_bgmodel_var_ARQOS QOS 1 4 }  { m_axi_bgmodel_var_ARREGION REGION 1 4 }  { m_axi_bgmodel_var_ARUSER USER 1 1 }  { m_axi_bgmodel_var_RVALID VALID 0 1 }  { m_axi_bgmodel_var_RREADY READY 1 1 }  { m_axi_bgmodel_var_RDATA DATA 0 32 }  { m_axi_bgmodel_var_RLAST LAST 0 1 }  { m_axi_bgmodel_var_RID ID 0 1 }  { m_axi_bgmodel_var_RUSER USER 0 1 }  { m_axi_bgmodel_var_RRESP RESP 0 2 }  { m_axi_bgmodel_var_BVALID VALID 0 1 }  { m_axi_bgmodel_var_BREADY READY 1 1 }  { m_axi_bgmodel_var_BRESP RESP 0 2 }  { m_axi_bgmodel_var_BID ID 0 1 }  { m_axi_bgmodel_var_BUSER USER 0 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 6 }
	{ bgmodel_sortKey 6 }
	{ bgmodel_weight 6 }
	{ bgmodel_mean 6 }
	{ bgmodel_var 6 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 6 }
	{ bgmodel_sortKey 6 }
	{ bgmodel_weight 6 }
	{ bgmodel_mean 6 }
	{ bgmodel_var 6 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
