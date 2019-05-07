#define TESTAPP_GEN

/******************************************************************************
*
* (c) Copyright 2010-14 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
******************************************************************************/
/******************************************************************************/
/**
* @file xdevcfg_selftest_example.c
*
* This file contains an self test example showing the usage of the Device
* Configuration Interface Hardware and driver (XDevCfg).
*
*
* @note
*
* None
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who    Date     Changes
* ----- ------ -------- -----------------------------------------------
* 1.00  sdm    05/25/11 First release.
* </pre>
*
*******************************************************************************/

/***************************** Include Files **********************************/

#include "xparameters.h"
#include "xdevcfg.h"
#include "xil_printf.h"

/************************** Constant Definitions ******************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are only defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define DCFG_DEVICE_ID		XPAR_XDCFG_0_DEVICE_ID


/**************************** Type Definitions ********************************/

/***************** Macros (Inline Functions) Definitions **********************/

/************************** Function Prototypes *******************************/

int DcfgSelfTestExample(u16 DeviceId);

/************************** Variable Definitions ******************************/

XDcfg DcfgInstance;		/* Device Configuration Interface Instance */

/******************************************************************************/
/**
*
* Main function to call the Device Configuration Interface Selftest example.
*
* @param	None
*
* @return
*		- XST_SUCCESS if successful
*		- XST_FAILURE if unsuccessful
*
* @note		None
*
*******************************************************************************/
#ifndef TESTAPP_GEN
int main(void)
{
	int Status;

	xil_printf("DevCfg Selftest Example \r\n");

	/*
	 * Call the example, specify the device ID that is generated in
	 * xparameters.h
	 */
	Status = DcfgSelfTestExample(DCFG_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("DevCfg Selftest Example Failed\r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran DevCfg Selftest Example\r\n");
	return XST_SUCCESS;
}
#endif

/*****************************************************************************/
/**
*
* This function does a selftest on the Device Configuration device and
* XDevCfg driver as an example. The purpose of this function is to illustrate
* the usage of the XDevCfg driver.
*
*
* @param	DeviceId is the XPAR_<XDCFG_instance>_DEVICE_ID value from
*		xparameters.h
*
* @return
*		- XST_SUCCESS if successful
*		- XST_FAILURE if unsuccessful
*
* @note		None
*
****************************************************************************/
int DcfgSelfTestExample(u16 DeviceId)
{
	int Status;
	XDcfg_Config *ConfigPtr;

	/*
	 * Initialize the Device Configuration Interface driver.
	 */
	ConfigPtr = XDcfg_LookupConfig(DeviceId);

	/*
	 * This is where the virtual address would be used, this example
	 * uses physical address.
	 */
	Status = XDcfg_CfgInitialize(&DcfgInstance, ConfigPtr,
					ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Run the Self Test.
	 */
	Status = XDcfg_SelfTest(&DcfgInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	return XST_SUCCESS;
}
