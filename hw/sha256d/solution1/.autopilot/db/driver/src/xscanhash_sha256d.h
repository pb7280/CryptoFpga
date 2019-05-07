// ==============================================================
// File generated on Fri Apr 26 15:35:07 -0400 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSCANHASH_SHA256D_H
#define XSCANHASH_SHA256D_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xscanhash_sha256d_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XScanhash_sha256d_Config;
#endif

typedef struct {
    u32 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XScanhash_sha256d;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XScanhash_sha256d_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XScanhash_sha256d_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XScanhash_sha256d_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XScanhash_sha256d_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XScanhash_sha256d_Initialize(XScanhash_sha256d *InstancePtr, u16 DeviceId);
XScanhash_sha256d_Config* XScanhash_sha256d_LookupConfig(u16 DeviceId);
int XScanhash_sha256d_CfgInitialize(XScanhash_sha256d *InstancePtr, XScanhash_sha256d_Config *ConfigPtr);
#else
int XScanhash_sha256d_Initialize(XScanhash_sha256d *InstancePtr, const char* InstanceName);
int XScanhash_sha256d_Release(XScanhash_sha256d *InstancePtr);
#endif

void XScanhash_sha256d_Start(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_IsDone(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_IsIdle(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_IsReady(XScanhash_sha256d *InstancePtr);
void XScanhash_sha256d_EnableAutoRestart(XScanhash_sha256d *InstancePtr);
void XScanhash_sha256d_DisableAutoRestart(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Get_return(XScanhash_sha256d *InstancePtr);

void XScanhash_sha256d_Set_max_nonce(XScanhash_sha256d *InstancePtr, u32 Data);
u32 XScanhash_sha256d_Get_max_nonce(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Get_num_hashes(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Get_num_hashes_vld(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Get_work_BaseAddress(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Get_work_HighAddress(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Get_work_TotalBytes(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Get_work_BitWidth(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Get_work_Depth(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Write_work_Words(XScanhash_sha256d *InstancePtr, int offset, int *data, int length);
u32 XScanhash_sha256d_Read_work_Words(XScanhash_sha256d *InstancePtr, int offset, int *data, int length);
u32 XScanhash_sha256d_Write_work_Bytes(XScanhash_sha256d *InstancePtr, int offset, char *data, int length);
u32 XScanhash_sha256d_Read_work_Bytes(XScanhash_sha256d *InstancePtr, int offset, char *data, int length);
u32 XScanhash_sha256d_Get_target_BaseAddress(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Get_target_HighAddress(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Get_target_TotalBytes(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Get_target_BitWidth(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Get_target_Depth(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_Write_target_Words(XScanhash_sha256d *InstancePtr, int offset, int *data, int length);
u32 XScanhash_sha256d_Read_target_Words(XScanhash_sha256d *InstancePtr, int offset, int *data, int length);
u32 XScanhash_sha256d_Write_target_Bytes(XScanhash_sha256d *InstancePtr, int offset, char *data, int length);
u32 XScanhash_sha256d_Read_target_Bytes(XScanhash_sha256d *InstancePtr, int offset, char *data, int length);

void XScanhash_sha256d_InterruptGlobalEnable(XScanhash_sha256d *InstancePtr);
void XScanhash_sha256d_InterruptGlobalDisable(XScanhash_sha256d *InstancePtr);
void XScanhash_sha256d_InterruptEnable(XScanhash_sha256d *InstancePtr, u32 Mask);
void XScanhash_sha256d_InterruptDisable(XScanhash_sha256d *InstancePtr, u32 Mask);
void XScanhash_sha256d_InterruptClear(XScanhash_sha256d *InstancePtr, u32 Mask);
u32 XScanhash_sha256d_InterruptGetEnabled(XScanhash_sha256d *InstancePtr);
u32 XScanhash_sha256d_InterruptGetStatus(XScanhash_sha256d *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
