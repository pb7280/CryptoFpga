// ==============================================================
// File generated on Fri Apr 26 15:35:07 -0400 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xscanhash_sha256d.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XScanhash_sha256d_CfgInitialize(XScanhash_sha256d *InstancePtr, XScanhash_sha256d_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XScanhash_sha256d_Start(XScanhash_sha256d *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XScanhash_sha256d_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XScanhash_sha256d_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XScanhash_sha256d_IsDone(XScanhash_sha256d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XScanhash_sha256d_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XScanhash_sha256d_IsIdle(XScanhash_sha256d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XScanhash_sha256d_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XScanhash_sha256d_IsReady(XScanhash_sha256d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XScanhash_sha256d_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XScanhash_sha256d_EnableAutoRestart(XScanhash_sha256d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XScanhash_sha256d_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XScanhash_sha256d_DisableAutoRestart(XScanhash_sha256d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XScanhash_sha256d_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_AP_CTRL, 0);
}

u32 XScanhash_sha256d_Get_return(XScanhash_sha256d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XScanhash_sha256d_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_AP_RETURN);
    return Data;
}
void XScanhash_sha256d_Set_max_nonce(XScanhash_sha256d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XScanhash_sha256d_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_MAX_NONCE_DATA, Data);
}

u32 XScanhash_sha256d_Get_max_nonce(XScanhash_sha256d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XScanhash_sha256d_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_MAX_NONCE_DATA);
    return Data;
}

u32 XScanhash_sha256d_Get_num_hashes(XScanhash_sha256d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XScanhash_sha256d_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_NUM_HASHES_DATA);
    return Data;
}

u32 XScanhash_sha256d_Get_num_hashes_vld(XScanhash_sha256d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XScanhash_sha256d_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_NUM_HASHES_CTRL);
    return Data & 0x1;
}

u32 XScanhash_sha256d_Get_work_BaseAddress(XScanhash_sha256d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_bus_BaseAddress + XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_BASE);
}

u32 XScanhash_sha256d_Get_work_HighAddress(XScanhash_sha256d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_bus_BaseAddress + XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_HIGH);
}

u32 XScanhash_sha256d_Get_work_TotalBytes(XScanhash_sha256d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_HIGH - XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_BASE + 1);
}

u32 XScanhash_sha256d_Get_work_BitWidth(XScanhash_sha256d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSCANHASH_SHA256D_CTRL_BUS_WIDTH_WORK;
}

u32 XScanhash_sha256d_Get_work_Depth(XScanhash_sha256d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSCANHASH_SHA256D_CTRL_BUS_DEPTH_WORK;
}

u32 XScanhash_sha256d_Write_work_Words(XScanhash_sha256d *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_HIGH - XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_bus_BaseAddress + XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XScanhash_sha256d_Read_work_Words(XScanhash_sha256d *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_HIGH - XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_bus_BaseAddress + XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_BASE + (offset + i)*4);
    }
    return length;
}

u32 XScanhash_sha256d_Write_work_Bytes(XScanhash_sha256d *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_HIGH - XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_bus_BaseAddress + XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XScanhash_sha256d_Read_work_Bytes(XScanhash_sha256d *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_HIGH - XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_bus_BaseAddress + XSCANHASH_SHA256D_CTRL_BUS_ADDR_WORK_BASE + offset + i);
    }
    return length;
}

u32 XScanhash_sha256d_Get_target_BaseAddress(XScanhash_sha256d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_bus_BaseAddress + XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_BASE);
}

u32 XScanhash_sha256d_Get_target_HighAddress(XScanhash_sha256d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_bus_BaseAddress + XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_HIGH);
}

u32 XScanhash_sha256d_Get_target_TotalBytes(XScanhash_sha256d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_HIGH - XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_BASE + 1);
}

u32 XScanhash_sha256d_Get_target_BitWidth(XScanhash_sha256d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSCANHASH_SHA256D_CTRL_BUS_WIDTH_TARGET;
}

u32 XScanhash_sha256d_Get_target_Depth(XScanhash_sha256d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSCANHASH_SHA256D_CTRL_BUS_DEPTH_TARGET;
}

u32 XScanhash_sha256d_Write_target_Words(XScanhash_sha256d *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_HIGH - XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_bus_BaseAddress + XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XScanhash_sha256d_Read_target_Words(XScanhash_sha256d *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_HIGH - XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_bus_BaseAddress + XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_BASE + (offset + i)*4);
    }
    return length;
}

u32 XScanhash_sha256d_Write_target_Bytes(XScanhash_sha256d *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_HIGH - XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_bus_BaseAddress + XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XScanhash_sha256d_Read_target_Bytes(XScanhash_sha256d *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_HIGH - XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_bus_BaseAddress + XSCANHASH_SHA256D_CTRL_BUS_ADDR_TARGET_BASE + offset + i);
    }
    return length;
}

void XScanhash_sha256d_InterruptGlobalEnable(XScanhash_sha256d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XScanhash_sha256d_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_GIE, 1);
}

void XScanhash_sha256d_InterruptGlobalDisable(XScanhash_sha256d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XScanhash_sha256d_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_GIE, 0);
}

void XScanhash_sha256d_InterruptEnable(XScanhash_sha256d *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XScanhash_sha256d_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_IER);
    XScanhash_sha256d_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XScanhash_sha256d_InterruptDisable(XScanhash_sha256d *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XScanhash_sha256d_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_IER);
    XScanhash_sha256d_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XScanhash_sha256d_InterruptClear(XScanhash_sha256d *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XScanhash_sha256d_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XScanhash_sha256d_InterruptGetEnabled(XScanhash_sha256d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XScanhash_sha256d_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_IER);
}

u32 XScanhash_sha256d_InterruptGetStatus(XScanhash_sha256d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XScanhash_sha256d_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSCANHASH_SHA256D_CTRL_BUS_ADDR_ISR);
}

