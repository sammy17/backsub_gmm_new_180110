set moduleName backsub_process
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {backsub_process}
set C_modelType { void 0 }
set C_modelArgList { 
	{ frame_in_0 int 8 regular {array 960 { 1 3 } 1 1 }  }
	{ frame_in_1 int 8 regular {array 960 { 1 3 } 1 1 }  }
	{ frame_in_2 int 8 regular {array 960 { 1 3 } 1 1 }  }
	{ frame_in_3 int 8 regular {array 960 { 1 3 } 1 1 }  }
	{ frame_in_4 int 8 regular {array 960 { 1 3 } 1 1 }  }
	{ frame_in_5 int 8 regular {array 960 { 1 3 } 1 1 }  }
	{ frame_in_6 int 8 regular {array 960 { 1 3 } 1 1 }  }
	{ frame_in_7 int 8 regular {array 960 { 1 3 } 1 1 }  }
	{ tmp_64 int 64 regular  }
	{ frame_out_0 int 8 regular {array 960 { 0 3 } 0 1 }  }
	{ frame_out_1 int 8 regular {array 960 { 0 3 } 0 1 }  }
	{ frame_out_2 int 8 regular {array 960 { 0 3 } 0 1 }  }
	{ frame_out_3 int 8 regular {array 960 { 0 3 } 0 1 }  }
	{ frame_out_4 int 8 regular {array 960 { 0 3 } 0 1 }  }
	{ frame_out_5 int 8 regular {array 960 { 0 3 } 0 1 }  }
	{ frame_out_6 int 8 regular {array 960 { 0 3 } 0 1 }  }
	{ frame_out_7 int 8 regular {array 960 { 0 3 } 0 1 }  }
	{ tmp_641 int 64 regular  }
	{ learningRate float 32 regular  }
	{ bgmodel_0_sortKey float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_1_sortKey float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_2_sortKey float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_3_sortKey float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_4_sortKey float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_5_sortKey float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_6_sortKey float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_7_sortKey float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ tmp_66 int 64 regular  }
	{ bgmodel_0_weight float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_1_weight float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_2_weight float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_3_weight float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_4_weight float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_5_weight float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_6_weight float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_7_weight float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ tmp_662 int 64 regular  }
	{ bgmodel_0_mean float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_1_mean float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_2_mean float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_3_mean float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_4_mean float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_5_mean float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_6_mean float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_7_mean float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ tmp_663 int 64 regular  }
	{ bgmodel_0_var float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_1_var float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_2_var float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_3_var float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_4_var float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_5_var float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_6_var float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ bgmodel_7_var float 32 regular {array 1920 { 2 3 } 1 1 }  }
	{ tmp_664 int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "frame_in_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "frame_in_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "frame_in_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "frame_in_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "frame_in_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "frame_in_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "frame_in_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "frame_in_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_64", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "frame_out_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "frame_out_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "frame_out_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "frame_out_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "frame_out_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "frame_out_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "frame_out_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "frame_out_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_641", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "learningRate", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bgmodel_0_sortKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_1_sortKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_2_sortKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_3_sortKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_4_sortKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_5_sortKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_6_sortKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_7_sortKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp_66", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bgmodel_0_weight", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_1_weight", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_2_weight", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_3_weight", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_4_weight", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_5_weight", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_6_weight", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_7_weight", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp_662", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bgmodel_0_mean", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_1_mean", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_2_mean", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_3_mean", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_4_mean", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_5_mean", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_6_mean", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_7_mean", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp_663", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bgmodel_0_var", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_1_var", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_2_var", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_3_var", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_4_var", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_5_var", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_6_var", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bgmodel_7_var", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp_664", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 229
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ frame_in_0_address0 sc_out sc_lv 10 signal 0 } 
	{ frame_in_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ frame_in_0_q0 sc_in sc_lv 8 signal 0 } 
	{ frame_in_1_address0 sc_out sc_lv 10 signal 1 } 
	{ frame_in_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ frame_in_1_q0 sc_in sc_lv 8 signal 1 } 
	{ frame_in_2_address0 sc_out sc_lv 10 signal 2 } 
	{ frame_in_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ frame_in_2_q0 sc_in sc_lv 8 signal 2 } 
	{ frame_in_3_address0 sc_out sc_lv 10 signal 3 } 
	{ frame_in_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ frame_in_3_q0 sc_in sc_lv 8 signal 3 } 
	{ frame_in_4_address0 sc_out sc_lv 10 signal 4 } 
	{ frame_in_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ frame_in_4_q0 sc_in sc_lv 8 signal 4 } 
	{ frame_in_5_address0 sc_out sc_lv 10 signal 5 } 
	{ frame_in_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ frame_in_5_q0 sc_in sc_lv 8 signal 5 } 
	{ frame_in_6_address0 sc_out sc_lv 10 signal 6 } 
	{ frame_in_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ frame_in_6_q0 sc_in sc_lv 8 signal 6 } 
	{ frame_in_7_address0 sc_out sc_lv 10 signal 7 } 
	{ frame_in_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ frame_in_7_q0 sc_in sc_lv 8 signal 7 } 
	{ tmp_64 sc_in sc_lv 64 signal 8 } 
	{ frame_out_0_address0 sc_out sc_lv 10 signal 9 } 
	{ frame_out_0_ce0 sc_out sc_logic 1 signal 9 } 
	{ frame_out_0_we0 sc_out sc_logic 1 signal 9 } 
	{ frame_out_0_d0 sc_out sc_lv 8 signal 9 } 
	{ frame_out_1_address0 sc_out sc_lv 10 signal 10 } 
	{ frame_out_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ frame_out_1_we0 sc_out sc_logic 1 signal 10 } 
	{ frame_out_1_d0 sc_out sc_lv 8 signal 10 } 
	{ frame_out_2_address0 sc_out sc_lv 10 signal 11 } 
	{ frame_out_2_ce0 sc_out sc_logic 1 signal 11 } 
	{ frame_out_2_we0 sc_out sc_logic 1 signal 11 } 
	{ frame_out_2_d0 sc_out sc_lv 8 signal 11 } 
	{ frame_out_3_address0 sc_out sc_lv 10 signal 12 } 
	{ frame_out_3_ce0 sc_out sc_logic 1 signal 12 } 
	{ frame_out_3_we0 sc_out sc_logic 1 signal 12 } 
	{ frame_out_3_d0 sc_out sc_lv 8 signal 12 } 
	{ frame_out_4_address0 sc_out sc_lv 10 signal 13 } 
	{ frame_out_4_ce0 sc_out sc_logic 1 signal 13 } 
	{ frame_out_4_we0 sc_out sc_logic 1 signal 13 } 
	{ frame_out_4_d0 sc_out sc_lv 8 signal 13 } 
	{ frame_out_5_address0 sc_out sc_lv 10 signal 14 } 
	{ frame_out_5_ce0 sc_out sc_logic 1 signal 14 } 
	{ frame_out_5_we0 sc_out sc_logic 1 signal 14 } 
	{ frame_out_5_d0 sc_out sc_lv 8 signal 14 } 
	{ frame_out_6_address0 sc_out sc_lv 10 signal 15 } 
	{ frame_out_6_ce0 sc_out sc_logic 1 signal 15 } 
	{ frame_out_6_we0 sc_out sc_logic 1 signal 15 } 
	{ frame_out_6_d0 sc_out sc_lv 8 signal 15 } 
	{ frame_out_7_address0 sc_out sc_lv 10 signal 16 } 
	{ frame_out_7_ce0 sc_out sc_logic 1 signal 16 } 
	{ frame_out_7_we0 sc_out sc_logic 1 signal 16 } 
	{ frame_out_7_d0 sc_out sc_lv 8 signal 16 } 
	{ tmp_641 sc_in sc_lv 64 signal 17 } 
	{ learningRate sc_in sc_lv 32 signal 18 } 
	{ bgmodel_0_sortKey_address0 sc_out sc_lv 11 signal 19 } 
	{ bgmodel_0_sortKey_ce0 sc_out sc_logic 1 signal 19 } 
	{ bgmodel_0_sortKey_we0 sc_out sc_logic 1 signal 19 } 
	{ bgmodel_0_sortKey_d0 sc_out sc_lv 32 signal 19 } 
	{ bgmodel_0_sortKey_q0 sc_in sc_lv 32 signal 19 } 
	{ bgmodel_1_sortKey_address0 sc_out sc_lv 11 signal 20 } 
	{ bgmodel_1_sortKey_ce0 sc_out sc_logic 1 signal 20 } 
	{ bgmodel_1_sortKey_we0 sc_out sc_logic 1 signal 20 } 
	{ bgmodel_1_sortKey_d0 sc_out sc_lv 32 signal 20 } 
	{ bgmodel_1_sortKey_q0 sc_in sc_lv 32 signal 20 } 
	{ bgmodel_2_sortKey_address0 sc_out sc_lv 11 signal 21 } 
	{ bgmodel_2_sortKey_ce0 sc_out sc_logic 1 signal 21 } 
	{ bgmodel_2_sortKey_we0 sc_out sc_logic 1 signal 21 } 
	{ bgmodel_2_sortKey_d0 sc_out sc_lv 32 signal 21 } 
	{ bgmodel_2_sortKey_q0 sc_in sc_lv 32 signal 21 } 
	{ bgmodel_3_sortKey_address0 sc_out sc_lv 11 signal 22 } 
	{ bgmodel_3_sortKey_ce0 sc_out sc_logic 1 signal 22 } 
	{ bgmodel_3_sortKey_we0 sc_out sc_logic 1 signal 22 } 
	{ bgmodel_3_sortKey_d0 sc_out sc_lv 32 signal 22 } 
	{ bgmodel_3_sortKey_q0 sc_in sc_lv 32 signal 22 } 
	{ bgmodel_4_sortKey_address0 sc_out sc_lv 11 signal 23 } 
	{ bgmodel_4_sortKey_ce0 sc_out sc_logic 1 signal 23 } 
	{ bgmodel_4_sortKey_we0 sc_out sc_logic 1 signal 23 } 
	{ bgmodel_4_sortKey_d0 sc_out sc_lv 32 signal 23 } 
	{ bgmodel_4_sortKey_q0 sc_in sc_lv 32 signal 23 } 
	{ bgmodel_5_sortKey_address0 sc_out sc_lv 11 signal 24 } 
	{ bgmodel_5_sortKey_ce0 sc_out sc_logic 1 signal 24 } 
	{ bgmodel_5_sortKey_we0 sc_out sc_logic 1 signal 24 } 
	{ bgmodel_5_sortKey_d0 sc_out sc_lv 32 signal 24 } 
	{ bgmodel_5_sortKey_q0 sc_in sc_lv 32 signal 24 } 
	{ bgmodel_6_sortKey_address0 sc_out sc_lv 11 signal 25 } 
	{ bgmodel_6_sortKey_ce0 sc_out sc_logic 1 signal 25 } 
	{ bgmodel_6_sortKey_we0 sc_out sc_logic 1 signal 25 } 
	{ bgmodel_6_sortKey_d0 sc_out sc_lv 32 signal 25 } 
	{ bgmodel_6_sortKey_q0 sc_in sc_lv 32 signal 25 } 
	{ bgmodel_7_sortKey_address0 sc_out sc_lv 11 signal 26 } 
	{ bgmodel_7_sortKey_ce0 sc_out sc_logic 1 signal 26 } 
	{ bgmodel_7_sortKey_we0 sc_out sc_logic 1 signal 26 } 
	{ bgmodel_7_sortKey_d0 sc_out sc_lv 32 signal 26 } 
	{ bgmodel_7_sortKey_q0 sc_in sc_lv 32 signal 26 } 
	{ tmp_66 sc_in sc_lv 64 signal 27 } 
	{ bgmodel_0_weight_address0 sc_out sc_lv 11 signal 28 } 
	{ bgmodel_0_weight_ce0 sc_out sc_logic 1 signal 28 } 
	{ bgmodel_0_weight_we0 sc_out sc_logic 1 signal 28 } 
	{ bgmodel_0_weight_d0 sc_out sc_lv 32 signal 28 } 
	{ bgmodel_0_weight_q0 sc_in sc_lv 32 signal 28 } 
	{ bgmodel_1_weight_address0 sc_out sc_lv 11 signal 29 } 
	{ bgmodel_1_weight_ce0 sc_out sc_logic 1 signal 29 } 
	{ bgmodel_1_weight_we0 sc_out sc_logic 1 signal 29 } 
	{ bgmodel_1_weight_d0 sc_out sc_lv 32 signal 29 } 
	{ bgmodel_1_weight_q0 sc_in sc_lv 32 signal 29 } 
	{ bgmodel_2_weight_address0 sc_out sc_lv 11 signal 30 } 
	{ bgmodel_2_weight_ce0 sc_out sc_logic 1 signal 30 } 
	{ bgmodel_2_weight_we0 sc_out sc_logic 1 signal 30 } 
	{ bgmodel_2_weight_d0 sc_out sc_lv 32 signal 30 } 
	{ bgmodel_2_weight_q0 sc_in sc_lv 32 signal 30 } 
	{ bgmodel_3_weight_address0 sc_out sc_lv 11 signal 31 } 
	{ bgmodel_3_weight_ce0 sc_out sc_logic 1 signal 31 } 
	{ bgmodel_3_weight_we0 sc_out sc_logic 1 signal 31 } 
	{ bgmodel_3_weight_d0 sc_out sc_lv 32 signal 31 } 
	{ bgmodel_3_weight_q0 sc_in sc_lv 32 signal 31 } 
	{ bgmodel_4_weight_address0 sc_out sc_lv 11 signal 32 } 
	{ bgmodel_4_weight_ce0 sc_out sc_logic 1 signal 32 } 
	{ bgmodel_4_weight_we0 sc_out sc_logic 1 signal 32 } 
	{ bgmodel_4_weight_d0 sc_out sc_lv 32 signal 32 } 
	{ bgmodel_4_weight_q0 sc_in sc_lv 32 signal 32 } 
	{ bgmodel_5_weight_address0 sc_out sc_lv 11 signal 33 } 
	{ bgmodel_5_weight_ce0 sc_out sc_logic 1 signal 33 } 
	{ bgmodel_5_weight_we0 sc_out sc_logic 1 signal 33 } 
	{ bgmodel_5_weight_d0 sc_out sc_lv 32 signal 33 } 
	{ bgmodel_5_weight_q0 sc_in sc_lv 32 signal 33 } 
	{ bgmodel_6_weight_address0 sc_out sc_lv 11 signal 34 } 
	{ bgmodel_6_weight_ce0 sc_out sc_logic 1 signal 34 } 
	{ bgmodel_6_weight_we0 sc_out sc_logic 1 signal 34 } 
	{ bgmodel_6_weight_d0 sc_out sc_lv 32 signal 34 } 
	{ bgmodel_6_weight_q0 sc_in sc_lv 32 signal 34 } 
	{ bgmodel_7_weight_address0 sc_out sc_lv 11 signal 35 } 
	{ bgmodel_7_weight_ce0 sc_out sc_logic 1 signal 35 } 
	{ bgmodel_7_weight_we0 sc_out sc_logic 1 signal 35 } 
	{ bgmodel_7_weight_d0 sc_out sc_lv 32 signal 35 } 
	{ bgmodel_7_weight_q0 sc_in sc_lv 32 signal 35 } 
	{ tmp_662 sc_in sc_lv 64 signal 36 } 
	{ bgmodel_0_mean_address0 sc_out sc_lv 11 signal 37 } 
	{ bgmodel_0_mean_ce0 sc_out sc_logic 1 signal 37 } 
	{ bgmodel_0_mean_we0 sc_out sc_logic 1 signal 37 } 
	{ bgmodel_0_mean_d0 sc_out sc_lv 32 signal 37 } 
	{ bgmodel_0_mean_q0 sc_in sc_lv 32 signal 37 } 
	{ bgmodel_1_mean_address0 sc_out sc_lv 11 signal 38 } 
	{ bgmodel_1_mean_ce0 sc_out sc_logic 1 signal 38 } 
	{ bgmodel_1_mean_we0 sc_out sc_logic 1 signal 38 } 
	{ bgmodel_1_mean_d0 sc_out sc_lv 32 signal 38 } 
	{ bgmodel_1_mean_q0 sc_in sc_lv 32 signal 38 } 
	{ bgmodel_2_mean_address0 sc_out sc_lv 11 signal 39 } 
	{ bgmodel_2_mean_ce0 sc_out sc_logic 1 signal 39 } 
	{ bgmodel_2_mean_we0 sc_out sc_logic 1 signal 39 } 
	{ bgmodel_2_mean_d0 sc_out sc_lv 32 signal 39 } 
	{ bgmodel_2_mean_q0 sc_in sc_lv 32 signal 39 } 
	{ bgmodel_3_mean_address0 sc_out sc_lv 11 signal 40 } 
	{ bgmodel_3_mean_ce0 sc_out sc_logic 1 signal 40 } 
	{ bgmodel_3_mean_we0 sc_out sc_logic 1 signal 40 } 
	{ bgmodel_3_mean_d0 sc_out sc_lv 32 signal 40 } 
	{ bgmodel_3_mean_q0 sc_in sc_lv 32 signal 40 } 
	{ bgmodel_4_mean_address0 sc_out sc_lv 11 signal 41 } 
	{ bgmodel_4_mean_ce0 sc_out sc_logic 1 signal 41 } 
	{ bgmodel_4_mean_we0 sc_out sc_logic 1 signal 41 } 
	{ bgmodel_4_mean_d0 sc_out sc_lv 32 signal 41 } 
	{ bgmodel_4_mean_q0 sc_in sc_lv 32 signal 41 } 
	{ bgmodel_5_mean_address0 sc_out sc_lv 11 signal 42 } 
	{ bgmodel_5_mean_ce0 sc_out sc_logic 1 signal 42 } 
	{ bgmodel_5_mean_we0 sc_out sc_logic 1 signal 42 } 
	{ bgmodel_5_mean_d0 sc_out sc_lv 32 signal 42 } 
	{ bgmodel_5_mean_q0 sc_in sc_lv 32 signal 42 } 
	{ bgmodel_6_mean_address0 sc_out sc_lv 11 signal 43 } 
	{ bgmodel_6_mean_ce0 sc_out sc_logic 1 signal 43 } 
	{ bgmodel_6_mean_we0 sc_out sc_logic 1 signal 43 } 
	{ bgmodel_6_mean_d0 sc_out sc_lv 32 signal 43 } 
	{ bgmodel_6_mean_q0 sc_in sc_lv 32 signal 43 } 
	{ bgmodel_7_mean_address0 sc_out sc_lv 11 signal 44 } 
	{ bgmodel_7_mean_ce0 sc_out sc_logic 1 signal 44 } 
	{ bgmodel_7_mean_we0 sc_out sc_logic 1 signal 44 } 
	{ bgmodel_7_mean_d0 sc_out sc_lv 32 signal 44 } 
	{ bgmodel_7_mean_q0 sc_in sc_lv 32 signal 44 } 
	{ tmp_663 sc_in sc_lv 64 signal 45 } 
	{ bgmodel_0_var_address0 sc_out sc_lv 11 signal 46 } 
	{ bgmodel_0_var_ce0 sc_out sc_logic 1 signal 46 } 
	{ bgmodel_0_var_we0 sc_out sc_logic 1 signal 46 } 
	{ bgmodel_0_var_d0 sc_out sc_lv 32 signal 46 } 
	{ bgmodel_0_var_q0 sc_in sc_lv 32 signal 46 } 
	{ bgmodel_1_var_address0 sc_out sc_lv 11 signal 47 } 
	{ bgmodel_1_var_ce0 sc_out sc_logic 1 signal 47 } 
	{ bgmodel_1_var_we0 sc_out sc_logic 1 signal 47 } 
	{ bgmodel_1_var_d0 sc_out sc_lv 32 signal 47 } 
	{ bgmodel_1_var_q0 sc_in sc_lv 32 signal 47 } 
	{ bgmodel_2_var_address0 sc_out sc_lv 11 signal 48 } 
	{ bgmodel_2_var_ce0 sc_out sc_logic 1 signal 48 } 
	{ bgmodel_2_var_we0 sc_out sc_logic 1 signal 48 } 
	{ bgmodel_2_var_d0 sc_out sc_lv 32 signal 48 } 
	{ bgmodel_2_var_q0 sc_in sc_lv 32 signal 48 } 
	{ bgmodel_3_var_address0 sc_out sc_lv 11 signal 49 } 
	{ bgmodel_3_var_ce0 sc_out sc_logic 1 signal 49 } 
	{ bgmodel_3_var_we0 sc_out sc_logic 1 signal 49 } 
	{ bgmodel_3_var_d0 sc_out sc_lv 32 signal 49 } 
	{ bgmodel_3_var_q0 sc_in sc_lv 32 signal 49 } 
	{ bgmodel_4_var_address0 sc_out sc_lv 11 signal 50 } 
	{ bgmodel_4_var_ce0 sc_out sc_logic 1 signal 50 } 
	{ bgmodel_4_var_we0 sc_out sc_logic 1 signal 50 } 
	{ bgmodel_4_var_d0 sc_out sc_lv 32 signal 50 } 
	{ bgmodel_4_var_q0 sc_in sc_lv 32 signal 50 } 
	{ bgmodel_5_var_address0 sc_out sc_lv 11 signal 51 } 
	{ bgmodel_5_var_ce0 sc_out sc_logic 1 signal 51 } 
	{ bgmodel_5_var_we0 sc_out sc_logic 1 signal 51 } 
	{ bgmodel_5_var_d0 sc_out sc_lv 32 signal 51 } 
	{ bgmodel_5_var_q0 sc_in sc_lv 32 signal 51 } 
	{ bgmodel_6_var_address0 sc_out sc_lv 11 signal 52 } 
	{ bgmodel_6_var_ce0 sc_out sc_logic 1 signal 52 } 
	{ bgmodel_6_var_we0 sc_out sc_logic 1 signal 52 } 
	{ bgmodel_6_var_d0 sc_out sc_lv 32 signal 52 } 
	{ bgmodel_6_var_q0 sc_in sc_lv 32 signal 52 } 
	{ bgmodel_7_var_address0 sc_out sc_lv 11 signal 53 } 
	{ bgmodel_7_var_ce0 sc_out sc_logic 1 signal 53 } 
	{ bgmodel_7_var_we0 sc_out sc_logic 1 signal 53 } 
	{ bgmodel_7_var_d0 sc_out sc_lv 32 signal 53 } 
	{ bgmodel_7_var_q0 sc_in sc_lv 32 signal 53 } 
	{ tmp_664 sc_in sc_lv 64 signal 54 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "frame_in_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_in_0", "role": "address0" }} , 
 	{ "name": "frame_in_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_in_0", "role": "ce0" }} , 
 	{ "name": "frame_in_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_in_0", "role": "q0" }} , 
 	{ "name": "frame_in_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_in_1", "role": "address0" }} , 
 	{ "name": "frame_in_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_in_1", "role": "ce0" }} , 
 	{ "name": "frame_in_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_in_1", "role": "q0" }} , 
 	{ "name": "frame_in_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_in_2", "role": "address0" }} , 
 	{ "name": "frame_in_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_in_2", "role": "ce0" }} , 
 	{ "name": "frame_in_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_in_2", "role": "q0" }} , 
 	{ "name": "frame_in_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_in_3", "role": "address0" }} , 
 	{ "name": "frame_in_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_in_3", "role": "ce0" }} , 
 	{ "name": "frame_in_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_in_3", "role": "q0" }} , 
 	{ "name": "frame_in_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_in_4", "role": "address0" }} , 
 	{ "name": "frame_in_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_in_4", "role": "ce0" }} , 
 	{ "name": "frame_in_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_in_4", "role": "q0" }} , 
 	{ "name": "frame_in_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_in_5", "role": "address0" }} , 
 	{ "name": "frame_in_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_in_5", "role": "ce0" }} , 
 	{ "name": "frame_in_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_in_5", "role": "q0" }} , 
 	{ "name": "frame_in_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_in_6", "role": "address0" }} , 
 	{ "name": "frame_in_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_in_6", "role": "ce0" }} , 
 	{ "name": "frame_in_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_in_6", "role": "q0" }} , 
 	{ "name": "frame_in_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_in_7", "role": "address0" }} , 
 	{ "name": "frame_in_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_in_7", "role": "ce0" }} , 
 	{ "name": "frame_in_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_in_7", "role": "q0" }} , 
 	{ "name": "tmp_64", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_64", "role": "default" }} , 
 	{ "name": "frame_out_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_out_0", "role": "address0" }} , 
 	{ "name": "frame_out_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_0", "role": "ce0" }} , 
 	{ "name": "frame_out_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_0", "role": "we0" }} , 
 	{ "name": "frame_out_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_out_0", "role": "d0" }} , 
 	{ "name": "frame_out_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_out_1", "role": "address0" }} , 
 	{ "name": "frame_out_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_1", "role": "ce0" }} , 
 	{ "name": "frame_out_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_1", "role": "we0" }} , 
 	{ "name": "frame_out_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_out_1", "role": "d0" }} , 
 	{ "name": "frame_out_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_out_2", "role": "address0" }} , 
 	{ "name": "frame_out_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_2", "role": "ce0" }} , 
 	{ "name": "frame_out_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_2", "role": "we0" }} , 
 	{ "name": "frame_out_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_out_2", "role": "d0" }} , 
 	{ "name": "frame_out_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_out_3", "role": "address0" }} , 
 	{ "name": "frame_out_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_3", "role": "ce0" }} , 
 	{ "name": "frame_out_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_3", "role": "we0" }} , 
 	{ "name": "frame_out_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_out_3", "role": "d0" }} , 
 	{ "name": "frame_out_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_out_4", "role": "address0" }} , 
 	{ "name": "frame_out_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_4", "role": "ce0" }} , 
 	{ "name": "frame_out_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_4", "role": "we0" }} , 
 	{ "name": "frame_out_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_out_4", "role": "d0" }} , 
 	{ "name": "frame_out_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_out_5", "role": "address0" }} , 
 	{ "name": "frame_out_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_5", "role": "ce0" }} , 
 	{ "name": "frame_out_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_5", "role": "we0" }} , 
 	{ "name": "frame_out_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_out_5", "role": "d0" }} , 
 	{ "name": "frame_out_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_out_6", "role": "address0" }} , 
 	{ "name": "frame_out_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_6", "role": "ce0" }} , 
 	{ "name": "frame_out_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_6", "role": "we0" }} , 
 	{ "name": "frame_out_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_out_6", "role": "d0" }} , 
 	{ "name": "frame_out_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "frame_out_7", "role": "address0" }} , 
 	{ "name": "frame_out_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_7", "role": "ce0" }} , 
 	{ "name": "frame_out_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_out_7", "role": "we0" }} , 
 	{ "name": "frame_out_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_out_7", "role": "d0" }} , 
 	{ "name": "tmp_641", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_641", "role": "default" }} , 
 	{ "name": "learningRate", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "learningRate", "role": "default" }} , 
 	{ "name": "bgmodel_0_sortKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_0_sortKey", "role": "address0" }} , 
 	{ "name": "bgmodel_0_sortKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_0_sortKey", "role": "ce0" }} , 
 	{ "name": "bgmodel_0_sortKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_0_sortKey", "role": "we0" }} , 
 	{ "name": "bgmodel_0_sortKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_0_sortKey", "role": "d0" }} , 
 	{ "name": "bgmodel_0_sortKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_0_sortKey", "role": "q0" }} , 
 	{ "name": "bgmodel_1_sortKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_1_sortKey", "role": "address0" }} , 
 	{ "name": "bgmodel_1_sortKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_1_sortKey", "role": "ce0" }} , 
 	{ "name": "bgmodel_1_sortKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_1_sortKey", "role": "we0" }} , 
 	{ "name": "bgmodel_1_sortKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_1_sortKey", "role": "d0" }} , 
 	{ "name": "bgmodel_1_sortKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_1_sortKey", "role": "q0" }} , 
 	{ "name": "bgmodel_2_sortKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_2_sortKey", "role": "address0" }} , 
 	{ "name": "bgmodel_2_sortKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_2_sortKey", "role": "ce0" }} , 
 	{ "name": "bgmodel_2_sortKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_2_sortKey", "role": "we0" }} , 
 	{ "name": "bgmodel_2_sortKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_2_sortKey", "role": "d0" }} , 
 	{ "name": "bgmodel_2_sortKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_2_sortKey", "role": "q0" }} , 
 	{ "name": "bgmodel_3_sortKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_3_sortKey", "role": "address0" }} , 
 	{ "name": "bgmodel_3_sortKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_3_sortKey", "role": "ce0" }} , 
 	{ "name": "bgmodel_3_sortKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_3_sortKey", "role": "we0" }} , 
 	{ "name": "bgmodel_3_sortKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_3_sortKey", "role": "d0" }} , 
 	{ "name": "bgmodel_3_sortKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_3_sortKey", "role": "q0" }} , 
 	{ "name": "bgmodel_4_sortKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_4_sortKey", "role": "address0" }} , 
 	{ "name": "bgmodel_4_sortKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_4_sortKey", "role": "ce0" }} , 
 	{ "name": "bgmodel_4_sortKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_4_sortKey", "role": "we0" }} , 
 	{ "name": "bgmodel_4_sortKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_4_sortKey", "role": "d0" }} , 
 	{ "name": "bgmodel_4_sortKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_4_sortKey", "role": "q0" }} , 
 	{ "name": "bgmodel_5_sortKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_5_sortKey", "role": "address0" }} , 
 	{ "name": "bgmodel_5_sortKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_5_sortKey", "role": "ce0" }} , 
 	{ "name": "bgmodel_5_sortKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_5_sortKey", "role": "we0" }} , 
 	{ "name": "bgmodel_5_sortKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_5_sortKey", "role": "d0" }} , 
 	{ "name": "bgmodel_5_sortKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_5_sortKey", "role": "q0" }} , 
 	{ "name": "bgmodel_6_sortKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_6_sortKey", "role": "address0" }} , 
 	{ "name": "bgmodel_6_sortKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_6_sortKey", "role": "ce0" }} , 
 	{ "name": "bgmodel_6_sortKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_6_sortKey", "role": "we0" }} , 
 	{ "name": "bgmodel_6_sortKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_6_sortKey", "role": "d0" }} , 
 	{ "name": "bgmodel_6_sortKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_6_sortKey", "role": "q0" }} , 
 	{ "name": "bgmodel_7_sortKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_7_sortKey", "role": "address0" }} , 
 	{ "name": "bgmodel_7_sortKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_7_sortKey", "role": "ce0" }} , 
 	{ "name": "bgmodel_7_sortKey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_7_sortKey", "role": "we0" }} , 
 	{ "name": "bgmodel_7_sortKey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_7_sortKey", "role": "d0" }} , 
 	{ "name": "bgmodel_7_sortKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_7_sortKey", "role": "q0" }} , 
 	{ "name": "tmp_66", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_66", "role": "default" }} , 
 	{ "name": "bgmodel_0_weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_0_weight", "role": "address0" }} , 
 	{ "name": "bgmodel_0_weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_0_weight", "role": "ce0" }} , 
 	{ "name": "bgmodel_0_weight_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_0_weight", "role": "we0" }} , 
 	{ "name": "bgmodel_0_weight_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_0_weight", "role": "d0" }} , 
 	{ "name": "bgmodel_0_weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_0_weight", "role": "q0" }} , 
 	{ "name": "bgmodel_1_weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_1_weight", "role": "address0" }} , 
 	{ "name": "bgmodel_1_weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_1_weight", "role": "ce0" }} , 
 	{ "name": "bgmodel_1_weight_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_1_weight", "role": "we0" }} , 
 	{ "name": "bgmodel_1_weight_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_1_weight", "role": "d0" }} , 
 	{ "name": "bgmodel_1_weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_1_weight", "role": "q0" }} , 
 	{ "name": "bgmodel_2_weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_2_weight", "role": "address0" }} , 
 	{ "name": "bgmodel_2_weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_2_weight", "role": "ce0" }} , 
 	{ "name": "bgmodel_2_weight_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_2_weight", "role": "we0" }} , 
 	{ "name": "bgmodel_2_weight_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_2_weight", "role": "d0" }} , 
 	{ "name": "bgmodel_2_weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_2_weight", "role": "q0" }} , 
 	{ "name": "bgmodel_3_weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_3_weight", "role": "address0" }} , 
 	{ "name": "bgmodel_3_weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_3_weight", "role": "ce0" }} , 
 	{ "name": "bgmodel_3_weight_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_3_weight", "role": "we0" }} , 
 	{ "name": "bgmodel_3_weight_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_3_weight", "role": "d0" }} , 
 	{ "name": "bgmodel_3_weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_3_weight", "role": "q0" }} , 
 	{ "name": "bgmodel_4_weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_4_weight", "role": "address0" }} , 
 	{ "name": "bgmodel_4_weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_4_weight", "role": "ce0" }} , 
 	{ "name": "bgmodel_4_weight_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_4_weight", "role": "we0" }} , 
 	{ "name": "bgmodel_4_weight_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_4_weight", "role": "d0" }} , 
 	{ "name": "bgmodel_4_weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_4_weight", "role": "q0" }} , 
 	{ "name": "bgmodel_5_weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_5_weight", "role": "address0" }} , 
 	{ "name": "bgmodel_5_weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_5_weight", "role": "ce0" }} , 
 	{ "name": "bgmodel_5_weight_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_5_weight", "role": "we0" }} , 
 	{ "name": "bgmodel_5_weight_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_5_weight", "role": "d0" }} , 
 	{ "name": "bgmodel_5_weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_5_weight", "role": "q0" }} , 
 	{ "name": "bgmodel_6_weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_6_weight", "role": "address0" }} , 
 	{ "name": "bgmodel_6_weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_6_weight", "role": "ce0" }} , 
 	{ "name": "bgmodel_6_weight_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_6_weight", "role": "we0" }} , 
 	{ "name": "bgmodel_6_weight_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_6_weight", "role": "d0" }} , 
 	{ "name": "bgmodel_6_weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_6_weight", "role": "q0" }} , 
 	{ "name": "bgmodel_7_weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_7_weight", "role": "address0" }} , 
 	{ "name": "bgmodel_7_weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_7_weight", "role": "ce0" }} , 
 	{ "name": "bgmodel_7_weight_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_7_weight", "role": "we0" }} , 
 	{ "name": "bgmodel_7_weight_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_7_weight", "role": "d0" }} , 
 	{ "name": "bgmodel_7_weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_7_weight", "role": "q0" }} , 
 	{ "name": "tmp_662", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_662", "role": "default" }} , 
 	{ "name": "bgmodel_0_mean_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_0_mean", "role": "address0" }} , 
 	{ "name": "bgmodel_0_mean_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_0_mean", "role": "ce0" }} , 
 	{ "name": "bgmodel_0_mean_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_0_mean", "role": "we0" }} , 
 	{ "name": "bgmodel_0_mean_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_0_mean", "role": "d0" }} , 
 	{ "name": "bgmodel_0_mean_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_0_mean", "role": "q0" }} , 
 	{ "name": "bgmodel_1_mean_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_1_mean", "role": "address0" }} , 
 	{ "name": "bgmodel_1_mean_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_1_mean", "role": "ce0" }} , 
 	{ "name": "bgmodel_1_mean_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_1_mean", "role": "we0" }} , 
 	{ "name": "bgmodel_1_mean_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_1_mean", "role": "d0" }} , 
 	{ "name": "bgmodel_1_mean_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_1_mean", "role": "q0" }} , 
 	{ "name": "bgmodel_2_mean_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_2_mean", "role": "address0" }} , 
 	{ "name": "bgmodel_2_mean_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_2_mean", "role": "ce0" }} , 
 	{ "name": "bgmodel_2_mean_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_2_mean", "role": "we0" }} , 
 	{ "name": "bgmodel_2_mean_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_2_mean", "role": "d0" }} , 
 	{ "name": "bgmodel_2_mean_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_2_mean", "role": "q0" }} , 
 	{ "name": "bgmodel_3_mean_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_3_mean", "role": "address0" }} , 
 	{ "name": "bgmodel_3_mean_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_3_mean", "role": "ce0" }} , 
 	{ "name": "bgmodel_3_mean_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_3_mean", "role": "we0" }} , 
 	{ "name": "bgmodel_3_mean_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_3_mean", "role": "d0" }} , 
 	{ "name": "bgmodel_3_mean_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_3_mean", "role": "q0" }} , 
 	{ "name": "bgmodel_4_mean_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_4_mean", "role": "address0" }} , 
 	{ "name": "bgmodel_4_mean_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_4_mean", "role": "ce0" }} , 
 	{ "name": "bgmodel_4_mean_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_4_mean", "role": "we0" }} , 
 	{ "name": "bgmodel_4_mean_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_4_mean", "role": "d0" }} , 
 	{ "name": "bgmodel_4_mean_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_4_mean", "role": "q0" }} , 
 	{ "name": "bgmodel_5_mean_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_5_mean", "role": "address0" }} , 
 	{ "name": "bgmodel_5_mean_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_5_mean", "role": "ce0" }} , 
 	{ "name": "bgmodel_5_mean_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_5_mean", "role": "we0" }} , 
 	{ "name": "bgmodel_5_mean_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_5_mean", "role": "d0" }} , 
 	{ "name": "bgmodel_5_mean_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_5_mean", "role": "q0" }} , 
 	{ "name": "bgmodel_6_mean_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_6_mean", "role": "address0" }} , 
 	{ "name": "bgmodel_6_mean_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_6_mean", "role": "ce0" }} , 
 	{ "name": "bgmodel_6_mean_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_6_mean", "role": "we0" }} , 
 	{ "name": "bgmodel_6_mean_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_6_mean", "role": "d0" }} , 
 	{ "name": "bgmodel_6_mean_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_6_mean", "role": "q0" }} , 
 	{ "name": "bgmodel_7_mean_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_7_mean", "role": "address0" }} , 
 	{ "name": "bgmodel_7_mean_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_7_mean", "role": "ce0" }} , 
 	{ "name": "bgmodel_7_mean_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_7_mean", "role": "we0" }} , 
 	{ "name": "bgmodel_7_mean_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_7_mean", "role": "d0" }} , 
 	{ "name": "bgmodel_7_mean_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_7_mean", "role": "q0" }} , 
 	{ "name": "tmp_663", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_663", "role": "default" }} , 
 	{ "name": "bgmodel_0_var_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_0_var", "role": "address0" }} , 
 	{ "name": "bgmodel_0_var_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_0_var", "role": "ce0" }} , 
 	{ "name": "bgmodel_0_var_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_0_var", "role": "we0" }} , 
 	{ "name": "bgmodel_0_var_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_0_var", "role": "d0" }} , 
 	{ "name": "bgmodel_0_var_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_0_var", "role": "q0" }} , 
 	{ "name": "bgmodel_1_var_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_1_var", "role": "address0" }} , 
 	{ "name": "bgmodel_1_var_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_1_var", "role": "ce0" }} , 
 	{ "name": "bgmodel_1_var_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_1_var", "role": "we0" }} , 
 	{ "name": "bgmodel_1_var_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_1_var", "role": "d0" }} , 
 	{ "name": "bgmodel_1_var_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_1_var", "role": "q0" }} , 
 	{ "name": "bgmodel_2_var_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_2_var", "role": "address0" }} , 
 	{ "name": "bgmodel_2_var_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_2_var", "role": "ce0" }} , 
 	{ "name": "bgmodel_2_var_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_2_var", "role": "we0" }} , 
 	{ "name": "bgmodel_2_var_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_2_var", "role": "d0" }} , 
 	{ "name": "bgmodel_2_var_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_2_var", "role": "q0" }} , 
 	{ "name": "bgmodel_3_var_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_3_var", "role": "address0" }} , 
 	{ "name": "bgmodel_3_var_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_3_var", "role": "ce0" }} , 
 	{ "name": "bgmodel_3_var_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_3_var", "role": "we0" }} , 
 	{ "name": "bgmodel_3_var_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_3_var", "role": "d0" }} , 
 	{ "name": "bgmodel_3_var_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_3_var", "role": "q0" }} , 
 	{ "name": "bgmodel_4_var_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_4_var", "role": "address0" }} , 
 	{ "name": "bgmodel_4_var_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_4_var", "role": "ce0" }} , 
 	{ "name": "bgmodel_4_var_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_4_var", "role": "we0" }} , 
 	{ "name": "bgmodel_4_var_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_4_var", "role": "d0" }} , 
 	{ "name": "bgmodel_4_var_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_4_var", "role": "q0" }} , 
 	{ "name": "bgmodel_5_var_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_5_var", "role": "address0" }} , 
 	{ "name": "bgmodel_5_var_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_5_var", "role": "ce0" }} , 
 	{ "name": "bgmodel_5_var_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_5_var", "role": "we0" }} , 
 	{ "name": "bgmodel_5_var_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_5_var", "role": "d0" }} , 
 	{ "name": "bgmodel_5_var_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_5_var", "role": "q0" }} , 
 	{ "name": "bgmodel_6_var_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_6_var", "role": "address0" }} , 
 	{ "name": "bgmodel_6_var_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_6_var", "role": "ce0" }} , 
 	{ "name": "bgmodel_6_var_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_6_var", "role": "we0" }} , 
 	{ "name": "bgmodel_6_var_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_6_var", "role": "d0" }} , 
 	{ "name": "bgmodel_6_var_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_6_var", "role": "q0" }} , 
 	{ "name": "bgmodel_7_var_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bgmodel_7_var", "role": "address0" }} , 
 	{ "name": "bgmodel_7_var_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_7_var", "role": "ce0" }} , 
 	{ "name": "bgmodel_7_var_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgmodel_7_var", "role": "we0" }} , 
 	{ "name": "bgmodel_7_var_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_7_var", "role": "d0" }} , 
 	{ "name": "bgmodel_7_var_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bgmodel_7_var", "role": "q0" }} , 
 	{ "name": "tmp_664", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_664", "role": "default" }}  ]}
set Spec2ImplPortList { 
	frame_in_0 { ap_memory {  { frame_in_0_address0 mem_address 1 10 }  { frame_in_0_ce0 mem_ce 1 1 }  { frame_in_0_q0 mem_dout 0 8 } } }
	frame_in_1 { ap_memory {  { frame_in_1_address0 mem_address 1 10 }  { frame_in_1_ce0 mem_ce 1 1 }  { frame_in_1_q0 mem_dout 0 8 } } }
	frame_in_2 { ap_memory {  { frame_in_2_address0 mem_address 1 10 }  { frame_in_2_ce0 mem_ce 1 1 }  { frame_in_2_q0 mem_dout 0 8 } } }
	frame_in_3 { ap_memory {  { frame_in_3_address0 mem_address 1 10 }  { frame_in_3_ce0 mem_ce 1 1 }  { frame_in_3_q0 mem_dout 0 8 } } }
	frame_in_4 { ap_memory {  { frame_in_4_address0 mem_address 1 10 }  { frame_in_4_ce0 mem_ce 1 1 }  { frame_in_4_q0 mem_dout 0 8 } } }
	frame_in_5 { ap_memory {  { frame_in_5_address0 mem_address 1 10 }  { frame_in_5_ce0 mem_ce 1 1 }  { frame_in_5_q0 mem_dout 0 8 } } }
	frame_in_6 { ap_memory {  { frame_in_6_address0 mem_address 1 10 }  { frame_in_6_ce0 mem_ce 1 1 }  { frame_in_6_q0 mem_dout 0 8 } } }
	frame_in_7 { ap_memory {  { frame_in_7_address0 mem_address 1 10 }  { frame_in_7_ce0 mem_ce 1 1 }  { frame_in_7_q0 mem_dout 0 8 } } }
	tmp_64 { ap_none {  { tmp_64 in_data 0 64 } } }
	frame_out_0 { ap_memory {  { frame_out_0_address0 mem_address 1 10 }  { frame_out_0_ce0 mem_ce 1 1 }  { frame_out_0_we0 mem_we 1 1 }  { frame_out_0_d0 mem_din 1 8 } } }
	frame_out_1 { ap_memory {  { frame_out_1_address0 mem_address 1 10 }  { frame_out_1_ce0 mem_ce 1 1 }  { frame_out_1_we0 mem_we 1 1 }  { frame_out_1_d0 mem_din 1 8 } } }
	frame_out_2 { ap_memory {  { frame_out_2_address0 mem_address 1 10 }  { frame_out_2_ce0 mem_ce 1 1 }  { frame_out_2_we0 mem_we 1 1 }  { frame_out_2_d0 mem_din 1 8 } } }
	frame_out_3 { ap_memory {  { frame_out_3_address0 mem_address 1 10 }  { frame_out_3_ce0 mem_ce 1 1 }  { frame_out_3_we0 mem_we 1 1 }  { frame_out_3_d0 mem_din 1 8 } } }
	frame_out_4 { ap_memory {  { frame_out_4_address0 mem_address 1 10 }  { frame_out_4_ce0 mem_ce 1 1 }  { frame_out_4_we0 mem_we 1 1 }  { frame_out_4_d0 mem_din 1 8 } } }
	frame_out_5 { ap_memory {  { frame_out_5_address0 mem_address 1 10 }  { frame_out_5_ce0 mem_ce 1 1 }  { frame_out_5_we0 mem_we 1 1 }  { frame_out_5_d0 mem_din 1 8 } } }
	frame_out_6 { ap_memory {  { frame_out_6_address0 mem_address 1 10 }  { frame_out_6_ce0 mem_ce 1 1 }  { frame_out_6_we0 mem_we 1 1 }  { frame_out_6_d0 mem_din 1 8 } } }
	frame_out_7 { ap_memory {  { frame_out_7_address0 mem_address 1 10 }  { frame_out_7_ce0 mem_ce 1 1 }  { frame_out_7_we0 mem_we 1 1 }  { frame_out_7_d0 mem_din 1 8 } } }
	tmp_641 { ap_none {  { tmp_641 in_data 0 64 } } }
	learningRate { ap_none {  { learningRate in_data 0 32 } } }
	bgmodel_0_sortKey { ap_memory {  { bgmodel_0_sortKey_address0 mem_address 1 11 }  { bgmodel_0_sortKey_ce0 mem_ce 1 1 }  { bgmodel_0_sortKey_we0 mem_we 1 1 }  { bgmodel_0_sortKey_d0 mem_din 1 32 }  { bgmodel_0_sortKey_q0 mem_dout 0 32 } } }
	bgmodel_1_sortKey { ap_memory {  { bgmodel_1_sortKey_address0 mem_address 1 11 }  { bgmodel_1_sortKey_ce0 mem_ce 1 1 }  { bgmodel_1_sortKey_we0 mem_we 1 1 }  { bgmodel_1_sortKey_d0 mem_din 1 32 }  { bgmodel_1_sortKey_q0 mem_dout 0 32 } } }
	bgmodel_2_sortKey { ap_memory {  { bgmodel_2_sortKey_address0 mem_address 1 11 }  { bgmodel_2_sortKey_ce0 mem_ce 1 1 }  { bgmodel_2_sortKey_we0 mem_we 1 1 }  { bgmodel_2_sortKey_d0 mem_din 1 32 }  { bgmodel_2_sortKey_q0 mem_dout 0 32 } } }
	bgmodel_3_sortKey { ap_memory {  { bgmodel_3_sortKey_address0 mem_address 1 11 }  { bgmodel_3_sortKey_ce0 mem_ce 1 1 }  { bgmodel_3_sortKey_we0 mem_we 1 1 }  { bgmodel_3_sortKey_d0 mem_din 1 32 }  { bgmodel_3_sortKey_q0 mem_dout 0 32 } } }
	bgmodel_4_sortKey { ap_memory {  { bgmodel_4_sortKey_address0 mem_address 1 11 }  { bgmodel_4_sortKey_ce0 mem_ce 1 1 }  { bgmodel_4_sortKey_we0 mem_we 1 1 }  { bgmodel_4_sortKey_d0 mem_din 1 32 }  { bgmodel_4_sortKey_q0 mem_dout 0 32 } } }
	bgmodel_5_sortKey { ap_memory {  { bgmodel_5_sortKey_address0 mem_address 1 11 }  { bgmodel_5_sortKey_ce0 mem_ce 1 1 }  { bgmodel_5_sortKey_we0 mem_we 1 1 }  { bgmodel_5_sortKey_d0 mem_din 1 32 }  { bgmodel_5_sortKey_q0 mem_dout 0 32 } } }
	bgmodel_6_sortKey { ap_memory {  { bgmodel_6_sortKey_address0 mem_address 1 11 }  { bgmodel_6_sortKey_ce0 mem_ce 1 1 }  { bgmodel_6_sortKey_we0 mem_we 1 1 }  { bgmodel_6_sortKey_d0 mem_din 1 32 }  { bgmodel_6_sortKey_q0 mem_dout 0 32 } } }
	bgmodel_7_sortKey { ap_memory {  { bgmodel_7_sortKey_address0 mem_address 1 11 }  { bgmodel_7_sortKey_ce0 mem_ce 1 1 }  { bgmodel_7_sortKey_we0 mem_we 1 1 }  { bgmodel_7_sortKey_d0 mem_din 1 32 }  { bgmodel_7_sortKey_q0 mem_dout 0 32 } } }
	tmp_66 { ap_none {  { tmp_66 in_data 0 64 } } }
	bgmodel_0_weight { ap_memory {  { bgmodel_0_weight_address0 mem_address 1 11 }  { bgmodel_0_weight_ce0 mem_ce 1 1 }  { bgmodel_0_weight_we0 mem_we 1 1 }  { bgmodel_0_weight_d0 mem_din 1 32 }  { bgmodel_0_weight_q0 mem_dout 0 32 } } }
	bgmodel_1_weight { ap_memory {  { bgmodel_1_weight_address0 mem_address 1 11 }  { bgmodel_1_weight_ce0 mem_ce 1 1 }  { bgmodel_1_weight_we0 mem_we 1 1 }  { bgmodel_1_weight_d0 mem_din 1 32 }  { bgmodel_1_weight_q0 mem_dout 0 32 } } }
	bgmodel_2_weight { ap_memory {  { bgmodel_2_weight_address0 mem_address 1 11 }  { bgmodel_2_weight_ce0 mem_ce 1 1 }  { bgmodel_2_weight_we0 mem_we 1 1 }  { bgmodel_2_weight_d0 mem_din 1 32 }  { bgmodel_2_weight_q0 mem_dout 0 32 } } }
	bgmodel_3_weight { ap_memory {  { bgmodel_3_weight_address0 mem_address 1 11 }  { bgmodel_3_weight_ce0 mem_ce 1 1 }  { bgmodel_3_weight_we0 mem_we 1 1 }  { bgmodel_3_weight_d0 mem_din 1 32 }  { bgmodel_3_weight_q0 mem_dout 0 32 } } }
	bgmodel_4_weight { ap_memory {  { bgmodel_4_weight_address0 mem_address 1 11 }  { bgmodel_4_weight_ce0 mem_ce 1 1 }  { bgmodel_4_weight_we0 mem_we 1 1 }  { bgmodel_4_weight_d0 mem_din 1 32 }  { bgmodel_4_weight_q0 mem_dout 0 32 } } }
	bgmodel_5_weight { ap_memory {  { bgmodel_5_weight_address0 mem_address 1 11 }  { bgmodel_5_weight_ce0 mem_ce 1 1 }  { bgmodel_5_weight_we0 mem_we 1 1 }  { bgmodel_5_weight_d0 mem_din 1 32 }  { bgmodel_5_weight_q0 mem_dout 0 32 } } }
	bgmodel_6_weight { ap_memory {  { bgmodel_6_weight_address0 mem_address 1 11 }  { bgmodel_6_weight_ce0 mem_ce 1 1 }  { bgmodel_6_weight_we0 mem_we 1 1 }  { bgmodel_6_weight_d0 mem_din 1 32 }  { bgmodel_6_weight_q0 mem_dout 0 32 } } }
	bgmodel_7_weight { ap_memory {  { bgmodel_7_weight_address0 mem_address 1 11 }  { bgmodel_7_weight_ce0 mem_ce 1 1 }  { bgmodel_7_weight_we0 mem_we 1 1 }  { bgmodel_7_weight_d0 mem_din 1 32 }  { bgmodel_7_weight_q0 mem_dout 0 32 } } }
	tmp_662 { ap_none {  { tmp_662 in_data 0 64 } } }
	bgmodel_0_mean { ap_memory {  { bgmodel_0_mean_address0 mem_address 1 11 }  { bgmodel_0_mean_ce0 mem_ce 1 1 }  { bgmodel_0_mean_we0 mem_we 1 1 }  { bgmodel_0_mean_d0 mem_din 1 32 }  { bgmodel_0_mean_q0 mem_dout 0 32 } } }
	bgmodel_1_mean { ap_memory {  { bgmodel_1_mean_address0 mem_address 1 11 }  { bgmodel_1_mean_ce0 mem_ce 1 1 }  { bgmodel_1_mean_we0 mem_we 1 1 }  { bgmodel_1_mean_d0 mem_din 1 32 }  { bgmodel_1_mean_q0 mem_dout 0 32 } } }
	bgmodel_2_mean { ap_memory {  { bgmodel_2_mean_address0 mem_address 1 11 }  { bgmodel_2_mean_ce0 mem_ce 1 1 }  { bgmodel_2_mean_we0 mem_we 1 1 }  { bgmodel_2_mean_d0 mem_din 1 32 }  { bgmodel_2_mean_q0 mem_dout 0 32 } } }
	bgmodel_3_mean { ap_memory {  { bgmodel_3_mean_address0 mem_address 1 11 }  { bgmodel_3_mean_ce0 mem_ce 1 1 }  { bgmodel_3_mean_we0 mem_we 1 1 }  { bgmodel_3_mean_d0 mem_din 1 32 }  { bgmodel_3_mean_q0 mem_dout 0 32 } } }
	bgmodel_4_mean { ap_memory {  { bgmodel_4_mean_address0 mem_address 1 11 }  { bgmodel_4_mean_ce0 mem_ce 1 1 }  { bgmodel_4_mean_we0 mem_we 1 1 }  { bgmodel_4_mean_d0 mem_din 1 32 }  { bgmodel_4_mean_q0 mem_dout 0 32 } } }
	bgmodel_5_mean { ap_memory {  { bgmodel_5_mean_address0 mem_address 1 11 }  { bgmodel_5_mean_ce0 mem_ce 1 1 }  { bgmodel_5_mean_we0 mem_we 1 1 }  { bgmodel_5_mean_d0 mem_din 1 32 }  { bgmodel_5_mean_q0 mem_dout 0 32 } } }
	bgmodel_6_mean { ap_memory {  { bgmodel_6_mean_address0 mem_address 1 11 }  { bgmodel_6_mean_ce0 mem_ce 1 1 }  { bgmodel_6_mean_we0 mem_we 1 1 }  { bgmodel_6_mean_d0 mem_din 1 32 }  { bgmodel_6_mean_q0 mem_dout 0 32 } } }
	bgmodel_7_mean { ap_memory {  { bgmodel_7_mean_address0 mem_address 1 11 }  { bgmodel_7_mean_ce0 mem_ce 1 1 }  { bgmodel_7_mean_we0 mem_we 1 1 }  { bgmodel_7_mean_d0 mem_din 1 32 }  { bgmodel_7_mean_q0 mem_dout 0 32 } } }
	tmp_663 { ap_none {  { tmp_663 in_data 0 64 } } }
	bgmodel_0_var { ap_memory {  { bgmodel_0_var_address0 mem_address 1 11 }  { bgmodel_0_var_ce0 mem_ce 1 1 }  { bgmodel_0_var_we0 mem_we 1 1 }  { bgmodel_0_var_d0 mem_din 1 32 }  { bgmodel_0_var_q0 mem_dout 0 32 } } }
	bgmodel_1_var { ap_memory {  { bgmodel_1_var_address0 mem_address 1 11 }  { bgmodel_1_var_ce0 mem_ce 1 1 }  { bgmodel_1_var_we0 mem_we 1 1 }  { bgmodel_1_var_d0 mem_din 1 32 }  { bgmodel_1_var_q0 mem_dout 0 32 } } }
	bgmodel_2_var { ap_memory {  { bgmodel_2_var_address0 mem_address 1 11 }  { bgmodel_2_var_ce0 mem_ce 1 1 }  { bgmodel_2_var_we0 mem_we 1 1 }  { bgmodel_2_var_d0 mem_din 1 32 }  { bgmodel_2_var_q0 mem_dout 0 32 } } }
	bgmodel_3_var { ap_memory {  { bgmodel_3_var_address0 mem_address 1 11 }  { bgmodel_3_var_ce0 mem_ce 1 1 }  { bgmodel_3_var_we0 mem_we 1 1 }  { bgmodel_3_var_d0 mem_din 1 32 }  { bgmodel_3_var_q0 mem_dout 0 32 } } }
	bgmodel_4_var { ap_memory {  { bgmodel_4_var_address0 mem_address 1 11 }  { bgmodel_4_var_ce0 mem_ce 1 1 }  { bgmodel_4_var_we0 mem_we 1 1 }  { bgmodel_4_var_d0 mem_din 1 32 }  { bgmodel_4_var_q0 mem_dout 0 32 } } }
	bgmodel_5_var { ap_memory {  { bgmodel_5_var_address0 mem_address 1 11 }  { bgmodel_5_var_ce0 mem_ce 1 1 }  { bgmodel_5_var_we0 mem_we 1 1 }  { bgmodel_5_var_d0 mem_din 1 32 }  { bgmodel_5_var_q0 mem_dout 0 32 } } }
	bgmodel_6_var { ap_memory {  { bgmodel_6_var_address0 mem_address 1 11 }  { bgmodel_6_var_ce0 mem_ce 1 1 }  { bgmodel_6_var_we0 mem_we 1 1 }  { bgmodel_6_var_d0 mem_din 1 32 }  { bgmodel_6_var_q0 mem_dout 0 32 } } }
	bgmodel_7_var { ap_memory {  { bgmodel_7_var_address0 mem_address 1 11 }  { bgmodel_7_var_ce0 mem_ce 1 1 }  { bgmodel_7_var_we0 mem_we 1 1 }  { bgmodel_7_var_d0 mem_din 1 32 }  { bgmodel_7_var_q0 mem_dout 0 32 } } }
	tmp_664 { ap_none {  { tmp_664 in_data 0 64 } } }
}
