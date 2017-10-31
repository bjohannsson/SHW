/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/

#include "packetman.h"

void INIT_PACKET_MANAGER(void)
{
	int i;
	for (i=0; i<4; i++) {
		
		packets4[0].payload[i] = 0x33;
	}
	packets4[0].dst = 1;
	packets4[0].src = 2;
	packets4[0].length = 4;
	packets4[0].inUse = true;
	
}

void setDMA(uint8* packet, uint16 length)
{
	/* DMA Configuration for DMA_PAY */
	DMA_PAY_Chan = DMA_PAY_DmaInitialize(DMA_PAY_BYTES_PER_BURST, DMA_PAY_REQUEST_PER_BURST, 
	    HI16(DMA_PAY_SRC_BASE), HI16(DMA_PAY_DST_BASE));
	DMA_PAY_TD[0] = CyDmaTdAllocate();
	CyDmaTdSetConfiguration(DMA_PAY_TD[0], 2*length, DMA_PAY_TD[0], CY_DMA_TD_INC_SRC_ADR);
	CyDmaTdSetAddress(DMA_PAY_TD[0], LO16((uint32)packet), LO16((uint32)CREG_PAY_Control_PTR));
	CyDmaChSetInitialTd(DMA_PAY_Chan, DMA_PAY_TD[0]);
	CyDmaChEnable(DMA_PAY_Chan, 1);
	
}

/* [] END OF FILE */