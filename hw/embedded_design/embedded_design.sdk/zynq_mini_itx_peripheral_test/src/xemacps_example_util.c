#define TESTAPP_GEN

/*****************************************************************************
*
* (c) Copyright 2010-13 Xilinx, Inc. All rights reserved.
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
* @file xemacps_example_util.c
*
* This file implements the utility functions for the XEmacPs example code.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00a wsy  01/10/10 First release
* 1.00a asa  01/24/12 A new version of EmacPsUtilEnterLoopback is used for
* 		      Zynq boards. Now there are two versions of
* 		      EmacPsUtilEnterLoopback, one for PEEP and one for Zynq.
* 		      If the example is to be run  on a PEEP board, define PEEP
* 		      in xemacps_example.h.
* 1.01a asa  02/27/12 The sleep value after PHY loopback is setup is reduced
*		      for Zynq.
* </pre>
*
*****************************************************************************/

/***************************** Include Files ********************************/

#include "xemacps_example.h"
#include "sleep.h"

/************************** Variable Definitions ****************************/

XEmacPs EmacPsInstance;	/* XEmacPs instance used throughout examples */

/*
 * Local MAC address
 */
char EmacPsMAC[] = { 0x00, 0x0a, 0x35, 0x01, 0x02, 0x03 };


/****************************************************************************/
/**
*
* Set the MAC addresses in the frame.
*
* @param    FramePtr is the pointer to the frame.
* @param    DestAddr is the Destination MAC address.
*
* @return   None.
*
* @note     None.
*
*****************************************************************************/
void EmacPsUtilFrameHdrFormatMAC(EthernetFrame * FramePtr, char *DestAddr)
{
	char *Frame = (char *) FramePtr;
	char *SourceAddress = EmacPsMAC;
	int Index;

	/* Destination address */
	for (Index = 0; Index < XEMACPS_MAC_ADDR_SIZE; Index++) {
		*Frame++ = *DestAddr++;
	}

	/* Source address */
	for (Index = 0; Index < XEMACPS_MAC_ADDR_SIZE; Index++) {
		*Frame++ = *SourceAddress++;
	}
}

/****************************************************************************/
/**
*
* Set the frame type for the specified frame.
*
* @param    FramePtr is the pointer to the frame.
* @param    FrameType is the Type to set in frame.
*
* @return   None.
*
* @note     None.
*
*****************************************************************************/
void EmacPsUtilFrameHdrFormatType(EthernetFrame * FramePtr, u16 FrameType)
{
	char *Frame = (char *) FramePtr;

	/*
	 * Increment to type field
	 */
	Frame = Frame + 12;
	/*
	 * Do endian swap from little to big-endian.
	 */
	FrameType = Xil_EndianSwap16(FrameType);
	/*
	 * Set the type
	 */
	*(u16 *) Frame = FrameType;
}

/****************************************************************************/
/**
* This function places a pattern in the payload section of a frame. The pattern
* is a  8 bit incrementing series of numbers starting with 0.
* Once the pattern reaches 256, then the pattern changes to a 16 bit
* incrementing pattern:
* <pre>
*   0, 1, 2, ... 254, 255, 00, 00, 00, 01, 00, 02, ...
* </pre>
*
* @param    FramePtr is a pointer to the frame to change.
* @param    PayloadSize is the number of bytes in the payload that will be set.
*
* @return   None.
*
* @note     None.
*
*****************************************************************************/
void EmacPsUtilFrameSetPayloadData(EthernetFrame * FramePtr, int PayloadSize)
{
	unsigned BytesLeft = PayloadSize;
	u8 *Frame;
	u16 Counter = 0;

	/*
	 * Set the frame pointer to the start of the payload area
	 */
	Frame = (u8 *) FramePtr + XEMACPS_HDR_SIZE;

	/*
	 * Insert 8 bit incrementing pattern
	 */
	while (BytesLeft && (Counter < 256)) {
		*Frame++ = (u8) Counter++;
		BytesLeft--;
	}

	/*
	 * Switch to 16 bit incrementing pattern
	 */
	while (BytesLeft) {
		*Frame++ = (u8) (Counter >> 8);	/* high */
		BytesLeft--;

		if (!BytesLeft)
			break;

		*Frame++ = (u8) Counter++;	/* low */
		BytesLeft--;
	}
}

/****************************************************************************/
/**
* This function verifies the frame data against a CheckFrame.
*
* Validation occurs by comparing the ActualFrame to the header of the
* CheckFrame. If the headers match, then the payload of ActualFrame is
* verified for the same pattern Util_FrameSetPayloadData() generates.
*
* @param    CheckFrame is a pointer to a frame containing the 14 byte header
*           that should be present in the ActualFrame parameter.
* @param    ActualFrame is a pointer to a frame to validate.
*
* @return   XST_SUCCESS if successful, else XST_FAILURE.
*
* @note     None.
*****************************************************************************/
int EmacPsUtilFrameVerify(EthernetFrame * CheckFrame,
			   EthernetFrame * ActualFrame)
{
	char *CheckPtr = (char *) CheckFrame;
	char *ActualPtr = (char *) ActualFrame;
	u16 BytesLeft;
	u16 Counter;
	int Index;

	/*
	 * Compare the headers
	 */
	for (Index = 0; Index < XEMACPS_HDR_SIZE; Index++) {
		if (CheckPtr[Index] != ActualPtr[Index]) {
			return XST_FAILURE;
		}
	}

	/*
	 * Get the length of the payload
	 */
	BytesLeft = *(u16 *) &ActualPtr[12];
	/*
	 * Do endian swap from big back to little-endian.
	 */
	BytesLeft = Xil_EndianSwap16(BytesLeft);
	/*
	 * Validate the payload
	 */
	Counter = 0;
	ActualPtr = &ActualPtr[14];

	/*
	 * Check 8 bit incrementing pattern
	 */
	while (BytesLeft && (Counter < 256)) {
		if (*ActualPtr++ != (char) Counter++) {
			return XST_FAILURE;
		}
		BytesLeft--;
	}

	/*
	 * Check 16 bit incrementing pattern
	 */
	while (BytesLeft) {
		if (*ActualPtr++ != (char) (Counter >> 8)) {	/* high */
			return XST_FAILURE;
		}

		BytesLeft--;

		if (!BytesLeft)
			break;

		if (*ActualPtr++ != (char) Counter++) {	/* low */
			return XST_FAILURE;
		}

		BytesLeft--;
	}

	return XST_SUCCESS;
}

/****************************************************************************/
/**
* This function sets all bytes of a frame to 0.
*
* @param    FramePtr is a pointer to the frame itself.
*
* @return   None.
*
* @note     None.
*
*****************************************************************************/
void EmacPsUtilFrameMemClear(EthernetFrame * FramePtr)
{
	u32 *Data32Ptr = (u32 *) FramePtr;
	u32 WordsLeft = sizeof(EthernetFrame) / sizeof(u32);

	/* frame should be an integral number of words */
	while (WordsLeft--) {
		*Data32Ptr++ = 0xDEADBEEF;
	}
}


/****************************************************************************/
/**
*
* This function copys data from source to desitnation for n bytes.
*
* @param    Destination is the targeted string to copy to.
* @param    Source is the source string to copy from.
* @param    n is number of bytes to be copied.
*
* @note     This function is similiar to strncpy(), however strncpy will
*           stop either at null byte or n bytes is been copied.
*           This function will copy n bytes without checking the content.
*
*****************************************************************************/
void EmacPsUtilstrncpy(char *Destination, const char *Source, u32 n)
{
	do {
		*Destination++ = *Source++;
	} while (--n != 0);
}


/****************************************************************************/
/**
*
* This function sets the emacps to loopback mode.
*
* @param    EmacPsInstancePtr is the XEmacPs driver instance.
*
* @note     None.
*
*****************************************************************************/
void EmacPsUtilEnterLocalLoopback(XEmacPs * EmacPsInstancePtr)
{
	u32 reg;

	reg = XEmacPs_ReadReg(EmacPsInstancePtr->Config.BaseAddress,
				XEMACPS_NWCTRL_OFFSET);
	XEmacPs_WriteReg(EmacPsInstancePtr->Config.BaseAddress,
			   XEMACPS_NWCTRL_OFFSET,
			   reg | XEMACPS_NWCTRL_LOOPEN_MASK);
}


/****************************************************************************/
/**
*
* This function detects the PHY address by looking for successful MII status
* register contents.
*
* @param    The XEMACPS driver instance
*
* @return   The address of the PHY (defaults to 32 if none detected)
*
* @note     None.
*
*****************************************************************************/
#define PHY_DETECT_REG1 2
#define PHY_DETECT_REG2 3

u32 XEmacPsDetectPHY(XEmacPs * EmacPsInstancePtr)
{
	u32 PhyAddr;
	int Status;
	u16 PhyReg1;
	u16 PhyReg2;

	for (PhyAddr = 0; PhyAddr <= 31; PhyAddr++) {
		Status = XEmacPs_PhyRead(EmacPsInstancePtr, PhyAddr,
					  PHY_DETECT_REG1, &PhyReg1);

		Status |= XEmacPs_PhyRead(EmacPsInstancePtr, PhyAddr,
					   PHY_DETECT_REG2, &PhyReg2);

		if ((Status == XST_SUCCESS) &&
		    (PhyReg1 > 0x0000) && (PhyReg1 < 0xffff) &&
		    (PhyReg2 > 0x0000) && (PhyReg2 < 0xffff)) {
			/* Found a valid PHY address */
			return PhyAddr;
		}
	}

	return PhyAddr;		/* default to 32(max of iteration) */
}


/****************************************************************************/
/**
*
* This function sets the PHY to loopback mode.
*
* @param    The XEMACPS driver instance
* @param    Speed is the loopback speed 10/100 Mbit.
*
* @return   XST_SUCCESS if successful, else XST_FAILURE.
*
* @note     None.
*
*****************************************************************************/
#ifdef PEEP /* Define PEEP in xemacps_example.h if the example is run on PEEP*/
#define PHY_REG0_RESET    		0x8000
#define PHY_REG0_LOOPBACK 		0x4000
#define PHY_REG0_10       		0x0100
#define PHY_REG0_100      		0x2100
#define PHY_REG0_1000     		0x0140
#define PHY_R20_DFT_SPD_MASK 		0x0070
#define PHY_R20_DFT_SPD_10   		0x0040
#define PHY_R20_DFT_SPD_100  		0x0050
#define PHY_R20_DFT_SPD_1000 		0x0060
int EmacPsUtilEnterLoopback(XEmacPs * EmacPsInstancePtr, int Speed)
{
	int Status;
	u16 PhyReg0  = 0;
	u16 PhyReg20 = 0;
	u32 PhyAddr;

	/* Detect the PHY address */
	PhyAddr = XEmacPsDetectPHY(EmacPsInstancePtr);
	if (PhyAddr >= 32) {
		EmacPsUtilErrorTrap("Error detect phy");
		return XST_FAILURE;
	}


	Status  = XEmacPs_PhyRead(EmacPsInstancePtr, PhyAddr, 20, &PhyReg20);
	Status  |= XEmacPs_PhyRead(EmacPsInstancePtr, PhyAddr, 0, &PhyReg0);
	PhyReg20 &= ~PHY_R20_DFT_SPD_MASK;

	switch (Speed) {
	case 10:
		PhyReg20 |= PHY_R20_DFT_SPD_10;
		break;
	case 100:
		PhyReg20 |= PHY_R20_DFT_SPD_100;
		break;
	case 1000:
		PhyReg20 |= PHY_R20_DFT_SPD_1000;
		break;
	default:
		EmacPsUtilErrorTrap("Error: speed not recognized ");
		return XST_FAILURE;
	}

	Status  |= XEmacPs_PhyWrite(EmacPsInstancePtr, PhyAddr, 20, PhyReg20);
	Status  |= XEmacPs_PhyWrite(EmacPsInstancePtr, PhyAddr, 0,
						PhyReg0 | PHY_REG0_RESET);

	/* setup speed and duplex */
	switch (Speed) {
	case 10:
		PhyReg0 = PHY_REG0_10;
		break;
	case 100:
		PhyReg0 = PHY_REG0_100;
		break;
	case 1000:
		PhyReg0 = PHY_REG0_1000;
		break;
	default:
		EmacPsUtilErrorTrap("Error: speed not recognized ");
		return XST_FAILURE;
	}
	Status |= XEmacPs_PhyWrite(EmacPsInstancePtr, PhyAddr, 0, PhyReg0);
	Status  |= XEmacPs_PhyWrite(EmacPsInstancePtr, PhyAddr, 0,
						(PhyReg0 | PHY_REG0_RESET));
	sleep(1);
	Status |= XEmacPs_PhyRead(EmacPsInstancePtr, PhyAddr, 0, &PhyReg0);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap("Error setup phy speed");
		return XST_FAILURE;
	}

	/* enable loopback */
	PhyReg0 |= PHY_REG0_LOOPBACK;
	Status = XEmacPs_PhyWrite(EmacPsInstancePtr, PhyAddr, 0, PhyReg0);

	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap("Error setup phy loopback");
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

#else /*For Zynq board*/

#define PHY_REG0_RESET    0x8000
#define PHY_REG0_LOOPBACK 0x4000
#define PHY_REG0_10       0x0100
#define PHY_REG0_100      0x2100
#define PHY_REG0_1000     0x0140
#define PHY_REG21_10      0x0030
#define PHY_REG21_100     0x2030
#define PHY_REG21_1000    0x0070

int EmacPsUtilEnterLoopback(XEmacPs * EmacPsInstancePtr, int Speed)
{
	int Status;
	u16 PhyReg0  = 0;
	u16 PhyReg21  = 0;
	u16 PhyReg22  = 0;
	u32 PhyAddr;

	/*
	 * Detect the PHY address
	 */
	PhyAddr = XEmacPsDetectPHY(EmacPsInstancePtr);

	if (PhyAddr >= 32) {
		EmacPsUtilErrorTrap("Error detect phy");
		return XST_FAILURE;
	}

	/*
	 * Setup speed and duplex
	 */
	switch (Speed) {
	case 10:
		PhyReg0 |= PHY_REG0_10;
		PhyReg21 |= PHY_REG21_10;
		break;
	case 100:
		PhyReg0 |= PHY_REG0_100;
		PhyReg21 |= PHY_REG21_100;
		break;
	case 1000:
		PhyReg0 |= PHY_REG0_1000;
		PhyReg21 |= PHY_REG21_1000;
		break;
	default:
		EmacPsUtilErrorTrap("Error: speed not recognized ");
		return XST_FAILURE;
	}

	Status = XEmacPs_PhyWrite(EmacPsInstancePtr, PhyAddr, 0, PhyReg0);
	/*
	 * Make sure new configuration is in effect
	 */
	Status = XEmacPs_PhyRead(EmacPsInstancePtr, PhyAddr, 0, &PhyReg0);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap("Error setup phy speed");
		return XST_FAILURE;
	}

	/*
	 * Switching to PAGE2
	 */
	PhyReg22 = 0x2;
	Status = XEmacPs_PhyWrite(EmacPsInstancePtr, PhyAddr, 22, PhyReg22);

	/*
	 * Adding Tx and Rx delay. Configuring loopback speed.
	 */
	Status = XEmacPs_PhyWrite(EmacPsInstancePtr, PhyAddr, 21, PhyReg21);
	/*
	 * Make sure new configuration is in effect
	 */
	Status = XEmacPs_PhyRead(EmacPsInstancePtr, PhyAddr, 21, &PhyReg21);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap("Error setting Reg 21 in Page 2");
		return XST_FAILURE;
	}
	/*
	 * Switching to PAGE0
	 */
	PhyReg22 = 0x0;
	Status = XEmacPs_PhyWrite(EmacPsInstancePtr, PhyAddr, 22, PhyReg22);

	/*
	 * Issue a reset to phy
	 */
	Status  = XEmacPs_PhyRead(EmacPsInstancePtr, PhyAddr, 0, &PhyReg0);
	PhyReg0 |= PHY_REG0_RESET;
	Status = XEmacPs_PhyWrite(EmacPsInstancePtr, PhyAddr, 0, PhyReg0);

	Status = XEmacPs_PhyRead(EmacPsInstancePtr, PhyAddr, 0, &PhyReg0);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap("Error reset phy");
		return XST_FAILURE;
	}

	/*
	 * Enable loopback
	 */
	PhyReg0 |= PHY_REG0_LOOPBACK;
	Status = XEmacPs_PhyWrite(EmacPsInstancePtr, PhyAddr, 0, PhyReg0);

	Status = XEmacPs_PhyRead(EmacPsInstancePtr, PhyAddr, 0, &PhyReg0);
	if (Status != XST_SUCCESS) {
		EmacPsUtilErrorTrap("Error setup phy loopback");
		return XST_FAILURE;
	}

	/*
	 * Delay loop
	 */
	sleep(1);

	return XST_SUCCESS;
}
#endif /*PEEP*/

/****************************************************************************/
/**
*
* This function is called by example code when an error is detected. It
* can be set as a breakpoint with a debugger or it can be used to print out
* the given message if there is a UART or STDIO device.
*
* @param    Message is the text explaining the error
*
* @return   None
*
* @note     None
*
*****************************************************************************/
void EmacPsUtilErrorTrap(const char *Message)
{
	static int Count = 0;

	Count++;

#ifdef STDOUT_BASEADDRESS
	xil_printf("%s\r\n", Message);
#else
	(void) Message;
#endif
}
