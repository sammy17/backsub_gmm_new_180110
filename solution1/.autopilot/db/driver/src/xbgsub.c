// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xbgsub.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XBgsub_CfgInitialize(XBgsub *InstancePtr, XBgsub_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XBgsub_Set_frame_in(XBgsub *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBgsub_WriteReg(InstancePtr->Axilites_BaseAddress, XBGSUB_AXILITES_ADDR_FRAME_IN_DATA, Data);
}

u32 XBgsub_Get_frame_in(XBgsub *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBgsub_ReadReg(InstancePtr->Axilites_BaseAddress, XBGSUB_AXILITES_ADDR_FRAME_IN_DATA);
    return Data;
}

void XBgsub_Set_frame_out(XBgsub *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBgsub_WriteReg(InstancePtr->Axilites_BaseAddress, XBGSUB_AXILITES_ADDR_FRAME_OUT_DATA, Data);
}

u32 XBgsub_Get_frame_out(XBgsub *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBgsub_ReadReg(InstancePtr->Axilites_BaseAddress, XBGSUB_AXILITES_ADDR_FRAME_OUT_DATA);
    return Data;
}

void XBgsub_Set_init(XBgsub *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBgsub_WriteReg(InstancePtr->Axilites_BaseAddress, XBGSUB_AXILITES_ADDR_INIT_DATA, Data);
}

u32 XBgsub_Get_init(XBgsub *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBgsub_ReadReg(InstancePtr->Axilites_BaseAddress, XBGSUB_AXILITES_ADDR_INIT_DATA);
    return Data;
}

void XBgsub_Set_bgmodel(XBgsub *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBgsub_WriteReg(InstancePtr->Axilites_BaseAddress, XBGSUB_AXILITES_ADDR_BGMODEL_DATA, Data);
}

u32 XBgsub_Get_bgmodel(XBgsub *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBgsub_ReadReg(InstancePtr->Axilites_BaseAddress, XBGSUB_AXILITES_ADDR_BGMODEL_DATA);
    return Data;
}

