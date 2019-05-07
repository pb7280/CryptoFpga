#define TESTAPP_GEN

/*****************************************************************************
*
* (c) Copyright 2010-2013 Xilinx, Inc. All rights reserved.
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
*****************************************************************************/
/****************************************************************************/
/**
*
* @file xemacps_example.h
*
* Defines common data types, prototypes, and includes the proper headers
* for use with the EMACPS example code residing in this directory.
*
* This file along with xemacps_example_util.c are utilized with the specific
* example code in the other source code files provided.
* These examples are designed to be compiled and utilized within the SDK
* standalone BSP development environment.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00a wsy  01/10/10 First release
* 1.01a asa  02/27/12 Hash define added for EMACPS_SLCR_DIV_MASK.
* 1.05a asa  09/22/13 The EthernetFrame is made cache line aligned (32 bytes).
*					  Fix for CR #663885.
* </pre>
*
*****************************************************************************/
#ifndef XEMACPS_EXAMPLE_H
#define XEMACPS_EXAMPLE_H


/***************************** Include Files ********************************/

#include <stdio.h>
#include <stdlib.h>
#include "sleep.h"
#include "xparameters.h"
#include "xparameters_ps.h"	/* defines XPAR values */
#include "xil_types.h"
#include "xil_assert.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xpseudo_asm.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xscugic.h"
#include "xemacps.h"		/* defines XEmacPs API */

/************************** Constant Definitions ****************************/

#define EMACPS_LOOPBACK_SPEED    100	/* 100Mbps */
#define EMACPS_LOOPBACK_SPEED_1G 1000	/* 1000Mbps */
#define EMACPS_PHY_DELAY_SEC     4	/* Amount of time to delay waiting on
					   PHY to reset */
#define EMACPS_SLCR_DIV_MASK	0xFC0FC0FF

/***************** Macros (Inline Functions) Definitions ********************/


/**************************** Type Definitions ******************************/

/*
 * Define an aligned data type for an ethernet frame. This declaration is
 * specific to the GNU compiler
 */
typedef char EthernetFrame[XEMACPS_MAX_VLAN_FRAME_SIZE]
	__attribute__ ((aligned(32)));

/************************** Function Prototypes *****************************/



/*
 * Utility functions implemented in xemacps_example_util.c
 */
void EmacPsUtilSetupUart(void);
void EmacPsUtilFrameHdrFormatMAC(EthernetFrame * FramePtr, char *DestAddr);
void EmacPsUtilFrameHdrFormatType(EthernetFrame * FramePtr, u16 FrameType);
void EmacPsUtilFrameSetPayloadData(EthernetFrame * FramePtr, int PayloadSize);
int EmacPsUtilFrameVerify(EthernetFrame * CheckFrame,
			   EthernetFrame * ActualFrame);
void EmacPsUtilFrameMemClear(EthernetFrame * FramePtr);
int EmacPsUtilEnterLoopback(XEmacPs * XEmacPsInstancePtr, int Speed);
void EmacPsUtilstrncpy(char *Destination, const char *Source, u32 n);
void EmacPsUtilErrorTrap(const char *Message);

/************************** Variable Definitions ****************************/

extern XEmacPs EmacPsInstance;	/* Device instance used throughout examples */
extern char EmacPsMAC[];	/* Local MAC address */


#endif /* XEMACPS_EXAMPLE_H */
