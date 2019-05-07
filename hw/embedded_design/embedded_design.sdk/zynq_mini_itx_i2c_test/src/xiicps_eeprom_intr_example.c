/* $Id: xiicps_eeprom_intr_example.c,v 1.1.2.2 2011/02/01 09:25:19 svemula Exp $ */
/******************************************************************************
*
* (c) Copyright 2010-12 Xilinx, Inc. All rights reserved.
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
/*****************************************************************************/
/**
* @file xiicps_eeprom_intr_example.c
*
* This file consists of a interrutp mode design example which uses the Xilinx
* PS IIC device and XIicPs driver to exercise the EEPROM.
*
* The XIicPs_MasterSend() API is used to transmit the data and the
* XIicPs_MasterRecv() API is used to receive the data.
*
* The example is tested with a 2Kb/8Kb serial IIC EEPROM (ST M24C02/M24C08).
* The WP pin of this EEPROM is hardwired to ground on the HW in which this
* was tested.
*
* The AddressType should be u8 as the address pointer in the on-board
* EEPROM is 1 bytes.
*
* This code assumes that no Operating System is being used.
*
* @note
*
* None.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- ---------------------------------------------------------
* 1.00a sdm  03/15/10 First release
* 1.01a sg   04/13/12 Added MuxInit function for initializing the IIC Mux
*		      on the ZC702 board and to configure it for accessing
*		      the IIC EEPROM.
*                     Updated to use usleep instead of delay loop
*
* </pre>
*
******************************************************************************/

/***************************** Include Files *********************************/

#include "xparameters.h"
#include "sleep.h"
#include "xiicps.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define IIC_DEVICE_ID	XPAR_XIICPS_0_DEVICE_ID
#define INTC_DEVICE_ID	XPAR_SCUGIC_SINGLE_DEVICE_ID
#define IIC_INTR_ID	XPAR_XIICPS_0_INTR

/*
 * The following constant defines the address of the IIC Slave device on the
 * IIC bus. Note that since the address is only 7 bits, this constant is the
 * address divided by 2.
 */
#define IIC_SLAVE_ADDR		0x50
//#define IIC_SLAVE_ADDR		0x54
#define IIC_SCLK_RATE		100000
#define IIC_MUX_ADDRESS 	0x70
/*
 * The page size determines how much data should be written at a time.
 * The write function should be called with this as a maximum byte count.
 */
#define PAGE_SIZE		16

/*
 * The Starting address in the IIC EEPROM on which this test is performed.
 */
#define EEPROM_START_ADDRESS	0

/**************************** Type Definitions *******************************/

/*
 * The AddressType should be u8 as the address pointer in the on-board
 * EEPROM is 1 byte.
 */
typedef u8 AddressType;

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

int IicPsEepromIntrExample(void);
int EepromWriteData(u16 ByteCount);
int MuxInit(void);
int EepromReadData(u8 *BufferPtr, u16 ByteCount);
//int hello_iic_hdmi (void);
//int hello_iic_port_expander (void);
int hello_iic_rtc (void);
//int hello_iic_si570 (void);
//int hello_iic_ddr3();
//int hello_iic_si5324();

static int SetupInterruptSystem(XIicPs * IicInstPtr);

static void Handler(void *CallBackRef, u32 Event);

/************************** Variable Definitions *****************************/

XIicPs IicInstance;		/* The instance of the IIC device. */
XScuGic InterruptController;	/* The instance of the Interrupt Controller. */

/*
 * Write buffer for writing a page.
 */
u8 WriteBuffer[sizeof(AddressType) + PAGE_SIZE];

u8 ReadBuffer[PAGE_SIZE];	/* Read buffer for reading a page. */

volatile u8 TransmitComplete;	/* Flag to check completion of Transmission */
volatile u8 ReceiveComplete;	/* Flag to check completion of Reception */
volatile u32 TotalErrorCount;

/************************** Function Definitions *****************************/

/*****************************************************************************/
/**
* Main function to call the Iic EEPROM interrupt example.
*
* @param	None.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int main(void)
{
	int Status;

    xil_printf("\n\r********************************************************");
    xil_printf("\n\r********************************************************");
    xil_printf("\n\r**     Mini-ITX IIC EEPROM Test                       **");
    xil_printf("\n\r********************************************************");
    xil_printf("\n\r********************************************************\r\n");

	/*
	 * Run the Iic EEPROM interrupt mode example.
	 */
	Status = IicPsEepromIntrExample();
	if (Status != XST_SUCCESS) {
		xil_printf("IIC EEPROM Interrupt Example Test Failed\r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran IIC EEPROM Interrupt Example Test\r\n");
//    hello_iic_hdmi();
//    hello_iic_port_expander();
    hello_iic_rtc();
//    hello_iic_si570();
//    hello_iic_ddr3();
//    hello_iic_si5324();
	return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This function writes, reads, and verifies the data to the IIC EEPROM. It
* does the write as a single page write, performs a buffered read.
*
* @param	None.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int IicPsEepromIntrExample(void)
{
	u32 Index;
	int Status;
	u32 i;
	XIicPs_Config *ConfigPtr;	/* Pointer to configuration data */
	AddressType Address = EEPROM_START_ADDRESS;

	/*
	 * Initialize the IIC driver so that it is ready to use.
	 */
	ConfigPtr = XIicPs_LookupConfig(IIC_DEVICE_ID);
	if (ConfigPtr == NULL) {
		return XST_FAILURE;
	}

	Status = XIicPs_CfgInitialize(&IicInstance, ConfigPtr,
					ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Setup the Interrupt System.
	 */
	Status = SetupInterruptSystem(&IicInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Setup the handlers for the IIC that will be called from the
	 * interrupt context when data has been sent and received, specify a
	 * pointer to the IIC driver instance as the callback reference so
	 * the handlers are able to access the instance data.
	 */
	XIicPs_SetStatusHandler(&IicInstance, (void *) &IicInstance, Handler);

	/*
	 * Set the IIC serial clock rate.
	 */
	XIicPs_SetSClk(&IicInstance, IIC_SCLK_RATE);

	/*
	 * Set the channel value in IIC Mux.
	 */
	Status = MuxInit();
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Initialize the data to write and the read buffer.
	 */
	if (sizeof(Address) == 1) {
		WriteBuffer[0] = (u8) (Address);
	} else {
		WriteBuffer[0] = (u8) (Address >> 8);
		WriteBuffer[1] = (u8) (Address);
		ReadBuffer[Index] = 0;
	}

	for (Index = 0; Index < PAGE_SIZE; Index++) {
		WriteBuffer[sizeof(Address) + Index] = 0xFF;
		ReadBuffer[Index] = 0;
	}

	/*
	 * Write to the EEPROM.
	 */
	Status = EepromWriteData(sizeof(Address) + PAGE_SIZE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Read from the EEPROM.
	 */
	for (i = 0; i < 1000000; i++) {
	}
	Status = EepromReadData(ReadBuffer, PAGE_SIZE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Verify the data read against the data written.
	 */
	for (Index = 0; Index < PAGE_SIZE; Index++) {
		if (ReadBuffer[Index] != WriteBuffer[Index + sizeof(Address)]) {
			return XST_FAILURE;
		}

		ReadBuffer[Index] = 0;
	}

	/*
	 * Initialize the data to write and the read buffer.
	 */
	if (sizeof(Address) == 1) {
		WriteBuffer[0] = (u8) (Address);
	} else {
		WriteBuffer[0] = (u8) (Address >> 8);
		WriteBuffer[1] = (u8) (Address);
		ReadBuffer[Index] = 0;
	}

	for (Index = 0; Index < PAGE_SIZE; Index++) {
		WriteBuffer[sizeof(Address) + Index] = Index + 0x10;
		ReadBuffer[Index] = 0;
	}

	/*
	 * Write to the EEPROM.
	 */
	Status = EepromWriteData(sizeof(Address) + PAGE_SIZE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Read from the EEPROM.
	 */
	for (i = 0; i < 1000000; i++) {
	}
Status = EepromReadData(ReadBuffer, PAGE_SIZE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Verify the data read against the data written.
	 */
	for (Index = 0; Index < PAGE_SIZE; Index++) {
		if (ReadBuffer[Index] != WriteBuffer[Index + sizeof(Address)]) {
			return XST_FAILURE;
		}

		//ReadBuffer[Index] = 0;
		for ( Index = 0; Index < PAGE_SIZE; Index++ ) {
		xil_printf("WriteBuffer[%02d]=0x%02X  ReadBuffer[%02d]=0x%02X\r\n", Index, WriteBuffer[Index+sizeof(Address)], Index, ReadBuffer[Index]);
		}
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This function writes a buffer of data to the IIC serial EEPROM.
*
* @param	ByteCount contains the number of bytes in the buffer to be
*		written.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		The Byte count should not exceed the page size of the EEPROM as
*		noted by the constant PAGE_SIZE.
*
******************************************************************************/
int EepromWriteData(u16 ByteCount)
{

	TransmitComplete = FALSE;

	/*
	 * Send the Data.
	 */
	XIicPs_MasterSend(&IicInstance, WriteBuffer,
			   ByteCount, IIC_SLAVE_ADDR);

	/*
	 * Wait for the entire buffer to be sent, letting the interrupt
	 * processing work in the background, this function may get
	 * locked up in this loop if the interrupts are not working
	 * correctly.
	 */
	while (TransmitComplete == FALSE) {
		if (0 != TotalErrorCount) {
			return XST_FAILURE;
		}
	}

	/*
	 * Wait until bus is idle to start another transfer.
	 */
	while (XIicPs_BusIsBusy(&IicInstance));

	/*
	 * Wait for a bit of time to allow the programming to occur as reading
	 * the status while programming causes it to fail because of noisy power
	 * on the board containing the EEPROM.
	 */
	usleep(200000);

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This function reads data from the IIC serial EEPROM into a specified buffer.
*
* @param	BufferPtr contains the address of the data buffer to be filled.
* @param	ByteCount contains the number of bytes in the buffer to be read.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int EepromReadData(u8 *BufferPtr, u16 ByteCount)
{
	int Status;
	AddressType Address = EEPROM_START_ADDRESS;

	/*
	 * Position the Pointer in EEPROM.
	 */
	if (sizeof(Address) == 1) {
		WriteBuffer[0] = (u8) (Address);
	}
	else {
		WriteBuffer[0] = (u8) (Address >> 8);
		WriteBuffer[1] = (u8) (Address);
	}

	Status = EepromWriteData(sizeof(Address));
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	ReceiveComplete = FALSE;

	/*
	 * Receive the Data.
	 */
	XIicPs_MasterRecv(&IicInstance, BufferPtr,
			   ByteCount, IIC_SLAVE_ADDR);

	while (ReceiveComplete == FALSE) {
		if (0 != TotalErrorCount) {
			return XST_FAILURE;
		}
	}

	/*
	 * Wait until bus is idle to start another transfer.
	 */
	while (XIicPs_BusIsBusy(&IicInstance));

	return XST_SUCCESS;
}

/******************************************************************************/
/**
*
* This function setups the interrupt system such that interrupts can occur
* for the IIC.
*
* @param	IicPsPtr contains a pointer to the instance of the Iic
*		which is going to be connected to the interrupt controller.
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None.
*
*******************************************************************************/
static int SetupInterruptSystem(XIicPs *IicPsPtr)
{
	int Status;
	XScuGic_Config *IntcConfig; /* Instance of the interrupt controller */

	Xil_ExceptionInit();

	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(&InterruptController, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
				(Xil_ExceptionHandler)XScuGic_InterruptHandler,
				&InterruptController);

	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XScuGic_Connect(&InterruptController, IIC_INTR_ID,
			(Xil_InterruptHandler)XIicPs_MasterInterruptHandler,
			(void *)IicPsPtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	/*
	 * Enable the interrupt for the Iic device.
	 */
	XScuGic_Enable(&InterruptController, IIC_INTR_ID);


	/*
	 * Enable interrupts in the Processor.
	 */
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function is the handler which performs processing to handle data events
* from the IIC.  It is called from an interrupt context such that the amount
* of processing performed should be minimized.
*
* This handler provides an example of how to handle data for the IIC and
* is application specific.
*
* @param	CallBackRef contains a callback reference from the driver, in
*		this case it is the instance pointer for the IIC driver.
* @param	Event contains the specific kind of event that has occurred.
* @param	EventData contains the number of bytes sent or received for sent
*		and receive events.
*
* @return	None.
*
* @note		None.
*
*******************************************************************************/
void Handler(void *CallBackRef, u32 Event)
{
	/*
	 * All of the data transfer has been finished.
	 */
	if (0 != (Event & XIICPS_EVENT_COMPLETE_RECV)){
		ReceiveComplete = TRUE;
	} else if (0 != (Event & XIICPS_EVENT_COMPLETE_SEND)) {
		TransmitComplete = TRUE;
	} else if (0 == (Event & XIICPS_EVENT_SLAVE_RDY)){
		/*
		 * If it is other interrupt but not slave ready interrupt, it is
		 * an error.
		 * Data was received with an error.
		 */
		TotalErrorCount++;
	}
}

/*****************************************************************************/
/**
* This function initializes the IIC MUX to select EEPROM.
*
* @param	None.
*
* @return	XST_SUCCESS if pass, otherwise XST_FAILURE.
*
* @note		None.
*
****************************************************************************/
int MuxInit(void)
{
	u8 WriteBuffer;
	u8 MuxIicAddr = IIC_MUX_ADDRESS;
	u8 Buffer = 0;

	/*
	 * GPIO Code to pull MUX out of reset.
	 */
	Xil_Out32(0xe000a204, 0x2000);
 	Xil_Out32(0xe000a208, 0x2000);
 	Xil_Out32(0xe000a040, 0x2000);

	/*
	 * Channel select value for EEPROM.
	 */
	WriteBuffer = 0x04;

	TransmitComplete = FALSE;

	/*
	 * Send the Data.
	 */
	XIicPs_MasterSend(&IicInstance, &WriteBuffer,1, MuxIicAddr);
	while (TransmitComplete == FALSE) {
		if (0 != TotalErrorCount) {
			return XST_FAILURE;
		}
	}

	/*
	 * Wait until bus is idle to start another transfer.
	 */
	while (XIicPs_BusIsBusy(&IicInstance));

	ReceiveComplete = FALSE;

	/*
	 * Receive the Data.
	 */
	XIicPs_MasterRecv(&IicInstance, &Buffer,1, MuxIicAddr);
	while (ReceiveComplete == FALSE) {
		if (0 != TotalErrorCount) {
			return XST_FAILURE;
		}
	}

	/*
	 * Wait until bus is idle to start another transfer.
	 */
	while (XIicPs_BusIsBusy(&IicInstance));

	return XST_SUCCESS;
}
