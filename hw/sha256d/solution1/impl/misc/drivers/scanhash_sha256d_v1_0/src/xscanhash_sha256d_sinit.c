// ==============================================================
// File generated on Fri Apr 26 15:35:07 -0400 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xscanhash_sha256d.h"

extern XScanhash_sha256d_Config XScanhash_sha256d_ConfigTable[];

XScanhash_sha256d_Config *XScanhash_sha256d_LookupConfig(u16 DeviceId) {
	XScanhash_sha256d_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSCANHASH_SHA256D_NUM_INSTANCES; Index++) {
		if (XScanhash_sha256d_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XScanhash_sha256d_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XScanhash_sha256d_Initialize(XScanhash_sha256d *InstancePtr, u16 DeviceId) {
	XScanhash_sha256d_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XScanhash_sha256d_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XScanhash_sha256d_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

