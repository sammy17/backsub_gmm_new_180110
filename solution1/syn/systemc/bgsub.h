// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _bgsub_HH_
#define _bgsub_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "bgsub_Block_proc.h"
#include "bgsub_AXILiteS_s_axi.h"
#include "bgsub_gmem_m_axi.h"
#include "bgsub_gmem_offset_m_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 6,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32,
         unsigned int C_M_AXI_GMEM_ADDR_WIDTH = 32,
         unsigned int C_M_AXI_GMEM_ID_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_AWUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_DATA_WIDTH = 32,
         unsigned int C_M_AXI_GMEM_WUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_ARUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_RUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_BUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_OFFSET_ADDR_WIDTH = 32,
         unsigned int C_M_AXI_GMEM_OFFSET_ID_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_OFFSET_AWUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_OFFSET_DATA_WIDTH = 32,
         unsigned int C_M_AXI_GMEM_OFFSET_WUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_OFFSET_ARUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_OFFSET_RUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_OFFSET_BUSER_WIDTH = 1>
struct bgsub : public sc_module {
    // Port declarations 113
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_logic > m_axi_gmem_AWVALID;
    sc_in< sc_logic > m_axi_gmem_AWREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_ADDR_WIDTH> > m_axi_gmem_AWADDR;
    sc_out< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_AWID;
    sc_out< sc_lv<8> > m_axi_gmem_AWLEN;
    sc_out< sc_lv<3> > m_axi_gmem_AWSIZE;
    sc_out< sc_lv<2> > m_axi_gmem_AWBURST;
    sc_out< sc_lv<2> > m_axi_gmem_AWLOCK;
    sc_out< sc_lv<4> > m_axi_gmem_AWCACHE;
    sc_out< sc_lv<3> > m_axi_gmem_AWPROT;
    sc_out< sc_lv<4> > m_axi_gmem_AWQOS;
    sc_out< sc_lv<4> > m_axi_gmem_AWREGION;
    sc_out< sc_uint<C_M_AXI_GMEM_AWUSER_WIDTH> > m_axi_gmem_AWUSER;
    sc_out< sc_logic > m_axi_gmem_WVALID;
    sc_in< sc_logic > m_axi_gmem_WREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_DATA_WIDTH> > m_axi_gmem_WDATA;
    sc_out< sc_uint<C_M_AXI_GMEM_DATA_WIDTH/8> > m_axi_gmem_WSTRB;
    sc_out< sc_logic > m_axi_gmem_WLAST;
    sc_out< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_WID;
    sc_out< sc_uint<C_M_AXI_GMEM_WUSER_WIDTH> > m_axi_gmem_WUSER;
    sc_out< sc_logic > m_axi_gmem_ARVALID;
    sc_in< sc_logic > m_axi_gmem_ARREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_ADDR_WIDTH> > m_axi_gmem_ARADDR;
    sc_out< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_ARID;
    sc_out< sc_lv<8> > m_axi_gmem_ARLEN;
    sc_out< sc_lv<3> > m_axi_gmem_ARSIZE;
    sc_out< sc_lv<2> > m_axi_gmem_ARBURST;
    sc_out< sc_lv<2> > m_axi_gmem_ARLOCK;
    sc_out< sc_lv<4> > m_axi_gmem_ARCACHE;
    sc_out< sc_lv<3> > m_axi_gmem_ARPROT;
    sc_out< sc_lv<4> > m_axi_gmem_ARQOS;
    sc_out< sc_lv<4> > m_axi_gmem_ARREGION;
    sc_out< sc_uint<C_M_AXI_GMEM_ARUSER_WIDTH> > m_axi_gmem_ARUSER;
    sc_in< sc_logic > m_axi_gmem_RVALID;
    sc_out< sc_logic > m_axi_gmem_RREADY;
    sc_in< sc_uint<C_M_AXI_GMEM_DATA_WIDTH> > m_axi_gmem_RDATA;
    sc_in< sc_logic > m_axi_gmem_RLAST;
    sc_in< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_RID;
    sc_in< sc_uint<C_M_AXI_GMEM_RUSER_WIDTH> > m_axi_gmem_RUSER;
    sc_in< sc_lv<2> > m_axi_gmem_RRESP;
    sc_in< sc_logic > m_axi_gmem_BVALID;
    sc_out< sc_logic > m_axi_gmem_BREADY;
    sc_in< sc_lv<2> > m_axi_gmem_BRESP;
    sc_in< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_BID;
    sc_in< sc_uint<C_M_AXI_GMEM_BUSER_WIDTH> > m_axi_gmem_BUSER;
    sc_out< sc_logic > m_axi_gmem_offset_AWVALID;
    sc_in< sc_logic > m_axi_gmem_offset_AWREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_OFFSET_ADDR_WIDTH> > m_axi_gmem_offset_AWADDR;
    sc_out< sc_uint<C_M_AXI_GMEM_OFFSET_ID_WIDTH> > m_axi_gmem_offset_AWID;
    sc_out< sc_lv<8> > m_axi_gmem_offset_AWLEN;
    sc_out< sc_lv<3> > m_axi_gmem_offset_AWSIZE;
    sc_out< sc_lv<2> > m_axi_gmem_offset_AWBURST;
    sc_out< sc_lv<2> > m_axi_gmem_offset_AWLOCK;
    sc_out< sc_lv<4> > m_axi_gmem_offset_AWCACHE;
    sc_out< sc_lv<3> > m_axi_gmem_offset_AWPROT;
    sc_out< sc_lv<4> > m_axi_gmem_offset_AWQOS;
    sc_out< sc_lv<4> > m_axi_gmem_offset_AWREGION;
    sc_out< sc_uint<C_M_AXI_GMEM_OFFSET_AWUSER_WIDTH> > m_axi_gmem_offset_AWUSER;
    sc_out< sc_logic > m_axi_gmem_offset_WVALID;
    sc_in< sc_logic > m_axi_gmem_offset_WREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_OFFSET_DATA_WIDTH> > m_axi_gmem_offset_WDATA;
    sc_out< sc_uint<C_M_AXI_GMEM_OFFSET_DATA_WIDTH/8> > m_axi_gmem_offset_WSTRB;
    sc_out< sc_logic > m_axi_gmem_offset_WLAST;
    sc_out< sc_uint<C_M_AXI_GMEM_OFFSET_ID_WIDTH> > m_axi_gmem_offset_WID;
    sc_out< sc_uint<C_M_AXI_GMEM_OFFSET_WUSER_WIDTH> > m_axi_gmem_offset_WUSER;
    sc_out< sc_logic > m_axi_gmem_offset_ARVALID;
    sc_in< sc_logic > m_axi_gmem_offset_ARREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_OFFSET_ADDR_WIDTH> > m_axi_gmem_offset_ARADDR;
    sc_out< sc_uint<C_M_AXI_GMEM_OFFSET_ID_WIDTH> > m_axi_gmem_offset_ARID;
    sc_out< sc_lv<8> > m_axi_gmem_offset_ARLEN;
    sc_out< sc_lv<3> > m_axi_gmem_offset_ARSIZE;
    sc_out< sc_lv<2> > m_axi_gmem_offset_ARBURST;
    sc_out< sc_lv<2> > m_axi_gmem_offset_ARLOCK;
    sc_out< sc_lv<4> > m_axi_gmem_offset_ARCACHE;
    sc_out< sc_lv<3> > m_axi_gmem_offset_ARPROT;
    sc_out< sc_lv<4> > m_axi_gmem_offset_ARQOS;
    sc_out< sc_lv<4> > m_axi_gmem_offset_ARREGION;
    sc_out< sc_uint<C_M_AXI_GMEM_OFFSET_ARUSER_WIDTH> > m_axi_gmem_offset_ARUSER;
    sc_in< sc_logic > m_axi_gmem_offset_RVALID;
    sc_out< sc_logic > m_axi_gmem_offset_RREADY;
    sc_in< sc_uint<C_M_AXI_GMEM_OFFSET_DATA_WIDTH> > m_axi_gmem_offset_RDATA;
    sc_in< sc_logic > m_axi_gmem_offset_RLAST;
    sc_in< sc_uint<C_M_AXI_GMEM_OFFSET_ID_WIDTH> > m_axi_gmem_offset_RID;
    sc_in< sc_uint<C_M_AXI_GMEM_OFFSET_RUSER_WIDTH> > m_axi_gmem_offset_RUSER;
    sc_in< sc_lv<2> > m_axi_gmem_offset_RRESP;
    sc_in< sc_logic > m_axi_gmem_offset_BVALID;
    sc_out< sc_logic > m_axi_gmem_offset_BREADY;
    sc_in< sc_lv<2> > m_axi_gmem_offset_BRESP;
    sc_in< sc_uint<C_M_AXI_GMEM_OFFSET_ID_WIDTH> > m_axi_gmem_offset_BID;
    sc_in< sc_uint<C_M_AXI_GMEM_OFFSET_BUSER_WIDTH> > m_axi_gmem_offset_BUSER;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;


    // Module declarations
    bgsub(sc_module_name name);
    SC_HAS_PROCESS(bgsub);

    ~bgsub();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    bgsub_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* bgsub_AXILiteS_s_axi_U;
    bgsub_gmem_m_axi<8,32,5,C_M_AXI_GMEM_ID_WIDTH,C_M_AXI_GMEM_ADDR_WIDTH,C_M_AXI_GMEM_DATA_WIDTH,C_M_AXI_GMEM_AWUSER_WIDTH,C_M_AXI_GMEM_ARUSER_WIDTH,C_M_AXI_GMEM_WUSER_WIDTH,C_M_AXI_GMEM_RUSER_WIDTH,C_M_AXI_GMEM_BUSER_WIDTH,C_M_AXI_GMEM_USER_VALUE,C_M_AXI_GMEM_PROT_VALUE,C_M_AXI_GMEM_CACHE_VALUE>* bgsub_gmem_m_axi_U;
    bgsub_gmem_offset_m_axi<32,32,5,C_M_AXI_GMEM_OFFSET_ID_WIDTH,C_M_AXI_GMEM_OFFSET_ADDR_WIDTH,C_M_AXI_GMEM_OFFSET_DATA_WIDTH,C_M_AXI_GMEM_OFFSET_AWUSER_WIDTH,C_M_AXI_GMEM_OFFSET_ARUSER_WIDTH,C_M_AXI_GMEM_OFFSET_WUSER_WIDTH,C_M_AXI_GMEM_OFFSET_RUSER_WIDTH,C_M_AXI_GMEM_OFFSET_BUSER_WIDTH,C_M_AXI_GMEM_OFFSET_USER_VALUE,C_M_AXI_GMEM_OFFSET_PROT_VALUE,C_M_AXI_GMEM_OFFSET_CACHE_VALUE>* bgsub_gmem_offset_m_axi_U;
    bgsub_Block_proc* bgsub_Block_proc_U0;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > bgsub_AXILiteS_s_axi_U_ap_dummy_ce;
    sc_signal< sc_lv<32> > frame_in;
    sc_signal< sc_lv<32> > frame_out;
    sc_signal< sc_logic > init;
    sc_signal< sc_lv<32> > bgmodel;
    sc_signal< sc_logic > gmem_AWVALID;
    sc_signal< sc_logic > gmem_AWREADY;
    sc_signal< sc_lv<32> > gmem_AWADDR;
    sc_signal< sc_lv<1> > gmem_AWID;
    sc_signal< sc_lv<32> > gmem_AWLEN;
    sc_signal< sc_lv<3> > gmem_AWSIZE;
    sc_signal< sc_lv<2> > gmem_AWBURST;
    sc_signal< sc_lv<2> > gmem_AWLOCK;
    sc_signal< sc_lv<4> > gmem_AWCACHE;
    sc_signal< sc_lv<3> > gmem_AWPROT;
    sc_signal< sc_lv<4> > gmem_AWQOS;
    sc_signal< sc_lv<4> > gmem_AWREGION;
    sc_signal< sc_lv<1> > gmem_AWUSER;
    sc_signal< sc_logic > gmem_WVALID;
    sc_signal< sc_logic > gmem_WREADY;
    sc_signal< sc_lv<8> > gmem_WDATA;
    sc_signal< sc_lv<1> > gmem_WSTRB;
    sc_signal< sc_logic > gmem_WLAST;
    sc_signal< sc_lv<1> > gmem_WID;
    sc_signal< sc_lv<1> > gmem_WUSER;
    sc_signal< sc_logic > gmem_ARVALID;
    sc_signal< sc_logic > gmem_ARREADY;
    sc_signal< sc_lv<32> > gmem_ARADDR;
    sc_signal< sc_lv<1> > gmem_ARID;
    sc_signal< sc_lv<32> > gmem_ARLEN;
    sc_signal< sc_lv<3> > gmem_ARSIZE;
    sc_signal< sc_lv<2> > gmem_ARBURST;
    sc_signal< sc_lv<2> > gmem_ARLOCK;
    sc_signal< sc_lv<4> > gmem_ARCACHE;
    sc_signal< sc_lv<3> > gmem_ARPROT;
    sc_signal< sc_lv<4> > gmem_ARQOS;
    sc_signal< sc_lv<4> > gmem_ARREGION;
    sc_signal< sc_lv<1> > gmem_ARUSER;
    sc_signal< sc_logic > gmem_RVALID;
    sc_signal< sc_logic > gmem_RREADY;
    sc_signal< sc_lv<8> > gmem_RDATA;
    sc_signal< sc_logic > gmem_RLAST;
    sc_signal< sc_lv<1> > gmem_RID;
    sc_signal< sc_lv<1> > gmem_RUSER;
    sc_signal< sc_lv<2> > gmem_RRESP;
    sc_signal< sc_logic > gmem_BVALID;
    sc_signal< sc_logic > gmem_BREADY;
    sc_signal< sc_lv<2> > gmem_BRESP;
    sc_signal< sc_lv<1> > gmem_BID;
    sc_signal< sc_lv<1> > gmem_BUSER;
    sc_signal< sc_logic > bgsub_gmem_m_axi_U_ap_dummy_ce;
    sc_signal< sc_logic > gmem_offset_AWVALID;
    sc_signal< sc_logic > gmem_offset_AWREADY;
    sc_signal< sc_lv<32> > gmem_offset_AWADDR;
    sc_signal< sc_lv<1> > gmem_offset_AWID;
    sc_signal< sc_lv<32> > gmem_offset_AWLEN;
    sc_signal< sc_lv<3> > gmem_offset_AWSIZE;
    sc_signal< sc_lv<2> > gmem_offset_AWBURST;
    sc_signal< sc_lv<2> > gmem_offset_AWLOCK;
    sc_signal< sc_lv<4> > gmem_offset_AWCACHE;
    sc_signal< sc_lv<3> > gmem_offset_AWPROT;
    sc_signal< sc_lv<4> > gmem_offset_AWQOS;
    sc_signal< sc_lv<4> > gmem_offset_AWREGION;
    sc_signal< sc_lv<1> > gmem_offset_AWUSER;
    sc_signal< sc_logic > gmem_offset_WVALID;
    sc_signal< sc_logic > gmem_offset_WREADY;
    sc_signal< sc_lv<32> > gmem_offset_WDATA;
    sc_signal< sc_lv<4> > gmem_offset_WSTRB;
    sc_signal< sc_logic > gmem_offset_WLAST;
    sc_signal< sc_lv<1> > gmem_offset_WID;
    sc_signal< sc_lv<1> > gmem_offset_WUSER;
    sc_signal< sc_logic > gmem_offset_ARVALID;
    sc_signal< sc_logic > gmem_offset_ARREADY;
    sc_signal< sc_lv<32> > gmem_offset_ARADDR;
    sc_signal< sc_lv<1> > gmem_offset_ARID;
    sc_signal< sc_lv<32> > gmem_offset_ARLEN;
    sc_signal< sc_lv<3> > gmem_offset_ARSIZE;
    sc_signal< sc_lv<2> > gmem_offset_ARBURST;
    sc_signal< sc_lv<2> > gmem_offset_ARLOCK;
    sc_signal< sc_lv<4> > gmem_offset_ARCACHE;
    sc_signal< sc_lv<3> > gmem_offset_ARPROT;
    sc_signal< sc_lv<4> > gmem_offset_ARQOS;
    sc_signal< sc_lv<4> > gmem_offset_ARREGION;
    sc_signal< sc_lv<1> > gmem_offset_ARUSER;
    sc_signal< sc_logic > gmem_offset_RVALID;
    sc_signal< sc_logic > gmem_offset_RREADY;
    sc_signal< sc_lv<32> > gmem_offset_RDATA;
    sc_signal< sc_logic > gmem_offset_RLAST;
    sc_signal< sc_lv<1> > gmem_offset_RID;
    sc_signal< sc_lv<1> > gmem_offset_RUSER;
    sc_signal< sc_lv<2> > gmem_offset_RRESP;
    sc_signal< sc_logic > gmem_offset_BVALID;
    sc_signal< sc_logic > gmem_offset_BREADY;
    sc_signal< sc_lv<2> > gmem_offset_BRESP;
    sc_signal< sc_lv<1> > gmem_offset_BID;
    sc_signal< sc_lv<1> > gmem_offset_BUSER;
    sc_signal< sc_logic > bgsub_gmem_offset_m_axi_U_ap_dummy_ce;
    sc_signal< sc_logic > bgsub_Block_proc_U0_ap_start;
    sc_signal< sc_logic > bgsub_Block_proc_U0_ap_done;
    sc_signal< sc_logic > bgsub_Block_proc_U0_ap_continue;
    sc_signal< sc_logic > bgsub_Block_proc_U0_ap_idle;
    sc_signal< sc_logic > bgsub_Block_proc_U0_ap_ready;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_init;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_bgmodel_AWVALID;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_bgmodel_AWREADY;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_m_axi_bgmodel_AWADDR;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_bgmodel_AWID;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_m_axi_bgmodel_AWLEN;
    sc_signal< sc_lv<3> > bgsub_Block_proc_U0_m_axi_bgmodel_AWSIZE;
    sc_signal< sc_lv<2> > bgsub_Block_proc_U0_m_axi_bgmodel_AWBURST;
    sc_signal< sc_lv<2> > bgsub_Block_proc_U0_m_axi_bgmodel_AWLOCK;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_bgmodel_AWCACHE;
    sc_signal< sc_lv<3> > bgsub_Block_proc_U0_m_axi_bgmodel_AWPROT;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_bgmodel_AWQOS;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_bgmodel_AWREGION;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_bgmodel_AWUSER;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_bgmodel_WVALID;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_bgmodel_WREADY;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_m_axi_bgmodel_WDATA;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_bgmodel_WSTRB;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_bgmodel_WLAST;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_bgmodel_WID;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_bgmodel_WUSER;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_bgmodel_ARVALID;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_bgmodel_ARREADY;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_m_axi_bgmodel_ARADDR;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_bgmodel_ARID;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_m_axi_bgmodel_ARLEN;
    sc_signal< sc_lv<3> > bgsub_Block_proc_U0_m_axi_bgmodel_ARSIZE;
    sc_signal< sc_lv<2> > bgsub_Block_proc_U0_m_axi_bgmodel_ARBURST;
    sc_signal< sc_lv<2> > bgsub_Block_proc_U0_m_axi_bgmodel_ARLOCK;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_bgmodel_ARCACHE;
    sc_signal< sc_lv<3> > bgsub_Block_proc_U0_m_axi_bgmodel_ARPROT;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_bgmodel_ARQOS;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_bgmodel_ARREGION;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_bgmodel_ARUSER;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_bgmodel_RVALID;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_bgmodel_RREADY;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_m_axi_bgmodel_RDATA;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_bgmodel_RLAST;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_bgmodel_RID;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_bgmodel_RUSER;
    sc_signal< sc_lv<2> > bgsub_Block_proc_U0_m_axi_bgmodel_RRESP;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_bgmodel_BVALID;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_bgmodel_BREADY;
    sc_signal< sc_lv<2> > bgsub_Block_proc_U0_m_axi_bgmodel_BRESP;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_bgmodel_BID;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_bgmodel_BUSER;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_bgmodel1;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_frame_out_AWVALID;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_frame_out_AWREADY;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_m_axi_frame_out_AWADDR;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_frame_out_AWID;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_m_axi_frame_out_AWLEN;
    sc_signal< sc_lv<3> > bgsub_Block_proc_U0_m_axi_frame_out_AWSIZE;
    sc_signal< sc_lv<2> > bgsub_Block_proc_U0_m_axi_frame_out_AWBURST;
    sc_signal< sc_lv<2> > bgsub_Block_proc_U0_m_axi_frame_out_AWLOCK;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_frame_out_AWCACHE;
    sc_signal< sc_lv<3> > bgsub_Block_proc_U0_m_axi_frame_out_AWPROT;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_frame_out_AWQOS;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_frame_out_AWREGION;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_frame_out_AWUSER;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_frame_out_WVALID;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_frame_out_WREADY;
    sc_signal< sc_lv<8> > bgsub_Block_proc_U0_m_axi_frame_out_WDATA;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_frame_out_WSTRB;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_frame_out_WLAST;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_frame_out_WID;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_frame_out_WUSER;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_frame_out_ARVALID;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_frame_out_ARREADY;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_m_axi_frame_out_ARADDR;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_frame_out_ARID;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_m_axi_frame_out_ARLEN;
    sc_signal< sc_lv<3> > bgsub_Block_proc_U0_m_axi_frame_out_ARSIZE;
    sc_signal< sc_lv<2> > bgsub_Block_proc_U0_m_axi_frame_out_ARBURST;
    sc_signal< sc_lv<2> > bgsub_Block_proc_U0_m_axi_frame_out_ARLOCK;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_frame_out_ARCACHE;
    sc_signal< sc_lv<3> > bgsub_Block_proc_U0_m_axi_frame_out_ARPROT;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_frame_out_ARQOS;
    sc_signal< sc_lv<4> > bgsub_Block_proc_U0_m_axi_frame_out_ARREGION;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_frame_out_ARUSER;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_frame_out_RVALID;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_frame_out_RREADY;
    sc_signal< sc_lv<8> > bgsub_Block_proc_U0_m_axi_frame_out_RDATA;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_frame_out_RLAST;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_frame_out_RID;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_frame_out_RUSER;
    sc_signal< sc_lv<2> > bgsub_Block_proc_U0_m_axi_frame_out_RRESP;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_frame_out_BVALID;
    sc_signal< sc_logic > bgsub_Block_proc_U0_m_axi_frame_out_BREADY;
    sc_signal< sc_lv<2> > bgsub_Block_proc_U0_m_axi_frame_out_BRESP;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_frame_out_BID;
    sc_signal< sc_lv<1> > bgsub_Block_proc_U0_m_axi_frame_out_BUSER;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_frame_out2;
    sc_signal< sc_lv<32> > bgsub_Block_proc_U0_frame_in;
    sc_signal< sc_logic > ap_reg_procdone_bgsub_Block_proc_U0;
    sc_signal< sc_logic > ap_sig_hs_done;
    sc_signal< sc_logic > ap_CS;
    sc_signal< sc_logic > ap_sig_top_allready;
    sc_signal< sc_logic > ap_sig_hs_continue;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_S_AXI_WSTRB_WIDTH;
    static const int C_S_AXI_ADDR_WIDTH;
    static const sc_logic ap_const_logic_1;
    static const int C_M_AXI_ID_WIDTH;
    static const int C_M_AXI_ADDR_WIDTH;
    static const int C_M_AXI_DATA_WIDTH;
    static const int C_M_AXI_WSTRB_WIDTH;
    static const int C_M_AXI_AWUSER_WIDTH;
    static const int C_M_AXI_ARUSER_WIDTH;
    static const int C_M_AXI_WUSER_WIDTH;
    static const int C_M_AXI_RUSER_WIDTH;
    static const int C_M_AXI_BUSER_WIDTH;
    static const int C_M_AXI_GMEM_USER_VALUE;
    static const int C_M_AXI_GMEM_PROT_VALUE;
    static const int C_M_AXI_GMEM_CACHE_VALUE;
    static const int C_M_AXI_GMEM_OFFSET_USER_VALUE;
    static const int C_M_AXI_GMEM_OFFSET_PROT_VALUE;
    static const int C_M_AXI_GMEM_OFFSET_CACHE_VALUE;
    static const sc_logic ap_const_logic_0;
    static const bool ap_true;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_hs_continue();
    void thread_ap_sig_hs_done();
    void thread_ap_sig_top_allready();
    void thread_bgsub_AXILiteS_s_axi_U_ap_dummy_ce();
    void thread_bgsub_Block_proc_U0_ap_continue();
    void thread_bgsub_Block_proc_U0_ap_start();
    void thread_bgsub_Block_proc_U0_bgmodel1();
    void thread_bgsub_Block_proc_U0_frame_in();
    void thread_bgsub_Block_proc_U0_frame_out2();
    void thread_bgsub_Block_proc_U0_init();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_ARREADY();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_AWREADY();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_BID();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_BRESP();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_BUSER();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_BVALID();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_RDATA();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_RID();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_RLAST();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_RRESP();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_RUSER();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_RVALID();
    void thread_bgsub_Block_proc_U0_m_axi_bgmodel_WREADY();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_ARREADY();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_AWREADY();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_BID();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_BRESP();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_BUSER();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_BVALID();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_RDATA();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_RID();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_RLAST();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_RRESP();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_RUSER();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_RVALID();
    void thread_bgsub_Block_proc_U0_m_axi_frame_out_WREADY();
    void thread_bgsub_gmem_m_axi_U_ap_dummy_ce();
    void thread_bgsub_gmem_offset_m_axi_U_ap_dummy_ce();
    void thread_gmem_ARADDR();
    void thread_gmem_ARBURST();
    void thread_gmem_ARCACHE();
    void thread_gmem_ARID();
    void thread_gmem_ARLEN();
    void thread_gmem_ARLOCK();
    void thread_gmem_ARPROT();
    void thread_gmem_ARQOS();
    void thread_gmem_ARREGION();
    void thread_gmem_ARSIZE();
    void thread_gmem_ARUSER();
    void thread_gmem_ARVALID();
    void thread_gmem_AWADDR();
    void thread_gmem_AWBURST();
    void thread_gmem_AWCACHE();
    void thread_gmem_AWID();
    void thread_gmem_AWLEN();
    void thread_gmem_AWLOCK();
    void thread_gmem_AWPROT();
    void thread_gmem_AWQOS();
    void thread_gmem_AWREGION();
    void thread_gmem_AWSIZE();
    void thread_gmem_AWUSER();
    void thread_gmem_AWVALID();
    void thread_gmem_BREADY();
    void thread_gmem_RREADY();
    void thread_gmem_WDATA();
    void thread_gmem_WID();
    void thread_gmem_WLAST();
    void thread_gmem_WSTRB();
    void thread_gmem_WUSER();
    void thread_gmem_WVALID();
    void thread_gmem_offset_ARADDR();
    void thread_gmem_offset_ARBURST();
    void thread_gmem_offset_ARCACHE();
    void thread_gmem_offset_ARID();
    void thread_gmem_offset_ARLEN();
    void thread_gmem_offset_ARLOCK();
    void thread_gmem_offset_ARPROT();
    void thread_gmem_offset_ARQOS();
    void thread_gmem_offset_ARREGION();
    void thread_gmem_offset_ARSIZE();
    void thread_gmem_offset_ARUSER();
    void thread_gmem_offset_ARVALID();
    void thread_gmem_offset_AWADDR();
    void thread_gmem_offset_AWBURST();
    void thread_gmem_offset_AWCACHE();
    void thread_gmem_offset_AWID();
    void thread_gmem_offset_AWLEN();
    void thread_gmem_offset_AWLOCK();
    void thread_gmem_offset_AWPROT();
    void thread_gmem_offset_AWQOS();
    void thread_gmem_offset_AWREGION();
    void thread_gmem_offset_AWSIZE();
    void thread_gmem_offset_AWUSER();
    void thread_gmem_offset_AWVALID();
    void thread_gmem_offset_BREADY();
    void thread_gmem_offset_RREADY();
    void thread_gmem_offset_WDATA();
    void thread_gmem_offset_WID();
    void thread_gmem_offset_WLAST();
    void thread_gmem_offset_WSTRB();
    void thread_gmem_offset_WUSER();
    void thread_gmem_offset_WVALID();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
