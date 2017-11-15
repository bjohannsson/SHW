/* ========================================
 *
 * SHW - Visible light Communication Controller
 * Bjarki Johannsson 2017
 * Open Source
 *
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

	packets4[0].inUse = true;
	packets4[0].hFields[0] = deviceAddress;
	packets4[0].hFields[1] = deviceAddress + 1;
	packets4[0].hFields[3] = PACKET_SIZE_4;
	
}

void setDMA(uint8* packet, uint16 length)
{
	/* DMA Configuration for DMA_PAY */
	DMA_PAY_Chan = DMA_PAY_DmaInitialize(DMA_PAY_BYTES_PER_BURST, DMA_PAY_REQUEST_PER_BURST, 
	    HI16(DMA_PAY_SRC_BASE), HI16(DMA_PAY_DST_BASE));
	DMA_PAY_TD[0] = CyDmaTdAllocate();
	CyDmaTdSetConfiguration(DMA_PAY_TD[0], length, DMA_PAY_TD[0], CY_DMA_TD_INC_SRC_ADR);
	CyDmaTdSetAddress(DMA_PAY_TD[0], LO16((uint32)packet), LO16((uint32)CREG_PAY_Control_PTR));
	CyDmaChSetInitialTd(DMA_PAY_Chan, DMA_PAY_TD[0]);
	CyDmaChEnable(DMA_PAY_Chan, 1);
	
}

void makeHeader(uint8 p)
{
	
	uint8 bit, fSum[4], f;
	packets4[p].hFields[2] = modLevel;
	
	for (f=0; f<4; f++) {
		
		for (bit=0; bit<4; bit++) {
		
			fSum[f] += (packets4[p].hFields[f] & 1<<bit);
		}
	}
	
	for (f=0; f<4; f++) {
		
		switch(fSum[f]) {
			
			case 0:
				packets4[p].header[f] = (0xF0 | packets4[p].hFields[f]);
				break;
			case 1:
				packets4[p].header[f] = (0xE0 | packets4[p].hFields[f]);
				break;
			case 2:
				packets4[p].header[f] = (0xC0 | packets4[p].hFields[f]);
				break;
			case 3:
				packets4[p].header[f] = (0x80 | packets4[p].hFields[f]);
				break;
			case 4:
				packets4[p].header[f] = (0x00 | packets4[p].hFields[f]);
				break;
			default:
				break;
		}
	}
	
}

/* [] END OF FILE */