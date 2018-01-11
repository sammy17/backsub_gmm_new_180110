# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 16
set MemName bgsub_Block_proc_part_bgmodel_sortKey
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 32
set AddrRange 2560
set AddrWd 12
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.71
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 17
set MemName bgsub_Block_proc_part_frame_in
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 8
set AddrRange 1280
set AddrWd 11
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.71
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 18
set MemName bgsub_Block_proc_part_frame_out
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 1
set AddrRange 1280
set AddrWd 11
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.71
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name init \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_init \
    op interface \
    ports { init { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name bgmodel_sortKey \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_bgmodel_sortKey \
    op interface \
    ports { m_axi_bgmodel_sortKey_AWVALID { O 1 bit } m_axi_bgmodel_sortKey_AWREADY { I 1 bit } m_axi_bgmodel_sortKey_AWADDR { O 32 vector } m_axi_bgmodel_sortKey_AWID { O 1 vector } m_axi_bgmodel_sortKey_AWLEN { O 32 vector } m_axi_bgmodel_sortKey_AWSIZE { O 3 vector } m_axi_bgmodel_sortKey_AWBURST { O 2 vector } m_axi_bgmodel_sortKey_AWLOCK { O 2 vector } m_axi_bgmodel_sortKey_AWCACHE { O 4 vector } m_axi_bgmodel_sortKey_AWPROT { O 3 vector } m_axi_bgmodel_sortKey_AWQOS { O 4 vector } m_axi_bgmodel_sortKey_AWREGION { O 4 vector } m_axi_bgmodel_sortKey_AWUSER { O 1 vector } m_axi_bgmodel_sortKey_WVALID { O 1 bit } m_axi_bgmodel_sortKey_WREADY { I 1 bit } m_axi_bgmodel_sortKey_WDATA { O 32 vector } m_axi_bgmodel_sortKey_WSTRB { O 4 vector } m_axi_bgmodel_sortKey_WLAST { O 1 bit } m_axi_bgmodel_sortKey_WID { O 1 vector } m_axi_bgmodel_sortKey_WUSER { O 1 vector } m_axi_bgmodel_sortKey_ARVALID { O 1 bit } m_axi_bgmodel_sortKey_ARREADY { I 1 bit } m_axi_bgmodel_sortKey_ARADDR { O 32 vector } m_axi_bgmodel_sortKey_ARID { O 1 vector } m_axi_bgmodel_sortKey_ARLEN { O 32 vector } m_axi_bgmodel_sortKey_ARSIZE { O 3 vector } m_axi_bgmodel_sortKey_ARBURST { O 2 vector } m_axi_bgmodel_sortKey_ARLOCK { O 2 vector } m_axi_bgmodel_sortKey_ARCACHE { O 4 vector } m_axi_bgmodel_sortKey_ARPROT { O 3 vector } m_axi_bgmodel_sortKey_ARQOS { O 4 vector } m_axi_bgmodel_sortKey_ARREGION { O 4 vector } m_axi_bgmodel_sortKey_ARUSER { O 1 vector } m_axi_bgmodel_sortKey_RVALID { I 1 bit } m_axi_bgmodel_sortKey_RREADY { O 1 bit } m_axi_bgmodel_sortKey_RDATA { I 32 vector } m_axi_bgmodel_sortKey_RLAST { I 1 bit } m_axi_bgmodel_sortKey_RID { I 1 vector } m_axi_bgmodel_sortKey_RUSER { I 1 vector } m_axi_bgmodel_sortKey_RRESP { I 2 vector } m_axi_bgmodel_sortKey_BVALID { I 1 bit } m_axi_bgmodel_sortKey_BREADY { O 1 bit } m_axi_bgmodel_sortKey_BRESP { I 2 vector } m_axi_bgmodel_sortKey_BID { I 1 vector } m_axi_bgmodel_sortKey_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name bgmodel_sortKey1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bgmodel_sortKey1 \
    op interface \
    ports { bgmodel_sortKey1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name bgmodel_weight \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bgmodel_weight \
    op interface \
    ports { bgmodel_weight { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name bgmodel_mean \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bgmodel_mean \
    op interface \
    ports { bgmodel_mean { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name bgmodel_var \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bgmodel_var \
    op interface \
    ports { bgmodel_var { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name frame_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_frame_out \
    op interface \
    ports { m_axi_frame_out_AWVALID { O 1 bit } m_axi_frame_out_AWREADY { I 1 bit } m_axi_frame_out_AWADDR { O 32 vector } m_axi_frame_out_AWID { O 1 vector } m_axi_frame_out_AWLEN { O 32 vector } m_axi_frame_out_AWSIZE { O 3 vector } m_axi_frame_out_AWBURST { O 2 vector } m_axi_frame_out_AWLOCK { O 2 vector } m_axi_frame_out_AWCACHE { O 4 vector } m_axi_frame_out_AWPROT { O 3 vector } m_axi_frame_out_AWQOS { O 4 vector } m_axi_frame_out_AWREGION { O 4 vector } m_axi_frame_out_AWUSER { O 1 vector } m_axi_frame_out_WVALID { O 1 bit } m_axi_frame_out_WREADY { I 1 bit } m_axi_frame_out_WDATA { O 8 vector } m_axi_frame_out_WSTRB { O 1 vector } m_axi_frame_out_WLAST { O 1 bit } m_axi_frame_out_WID { O 1 vector } m_axi_frame_out_WUSER { O 1 vector } m_axi_frame_out_ARVALID { O 1 bit } m_axi_frame_out_ARREADY { I 1 bit } m_axi_frame_out_ARADDR { O 32 vector } m_axi_frame_out_ARID { O 1 vector } m_axi_frame_out_ARLEN { O 32 vector } m_axi_frame_out_ARSIZE { O 3 vector } m_axi_frame_out_ARBURST { O 2 vector } m_axi_frame_out_ARLOCK { O 2 vector } m_axi_frame_out_ARCACHE { O 4 vector } m_axi_frame_out_ARPROT { O 3 vector } m_axi_frame_out_ARQOS { O 4 vector } m_axi_frame_out_ARREGION { O 4 vector } m_axi_frame_out_ARUSER { O 1 vector } m_axi_frame_out_RVALID { I 1 bit } m_axi_frame_out_RREADY { O 1 bit } m_axi_frame_out_RDATA { I 8 vector } m_axi_frame_out_RLAST { I 1 bit } m_axi_frame_out_RID { I 1 vector } m_axi_frame_out_RUSER { I 1 vector } m_axi_frame_out_RRESP { I 2 vector } m_axi_frame_out_BVALID { I 1 bit } m_axi_frame_out_BREADY { O 1 bit } m_axi_frame_out_BRESP { I 2 vector } m_axi_frame_out_BID { I 1 vector } m_axi_frame_out_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name frame_out2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_frame_out2 \
    op interface \
    ports { frame_out2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name frame_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_frame_in \
    op interface \
    ports { frame_in { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


