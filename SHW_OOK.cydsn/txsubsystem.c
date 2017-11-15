/* ========================================
 *
 * SHW - Visible light Communication Controller
 * Bjarki Johannsson 2017
 * Open Source
 *
 *
 * ========================================
*/

#include "txsubsystem.h"
#include "main.h"

void INIT_TX_SUBSYSTEM(void)
{

	/* Initialize compensation tracking values */
	m2Track[0] = -1;
	m2Track[1] = 1;
	int i;
	for (i=0; i<2; i++) {
		
		m4Track[i] = -3 + 2*i;
		m4Track[i+2] = 1 + 2*i;
	}
	for (i=0; i<4; i++) {
		
		m8Track[i] = -7 + 2*i;
		m8Track[i+4] = 1 + 2*i;
	}
	for (i=0; i<8; i++) {
		
		m16Track[i] = -15 + 2*i;
		m16Track[i+8] = 1 + 2*i;
	}
	for (i=0; i<16; i++) {
		
		m32Track[i] = -31 + 2*i;
		m32Track[i+16] = 1 + 2*i;
	}
	
	
	/* Init ISRs */
	ISR_SYMB_StartEx(ISR_SYMB_h);
	ISR_SYMB_Enable();
	
	ISR_INJ_StartEx(ISR_INJ_h);
	ISR_INJ_Enable();
	
	ISR_INJ_CHECK_StartEx(ISR_INJ_CHECK_h);
	ISR_INJ_CHECK_Enable();
	
	ISR_TX_DONE_StartEx(ISR_TX_DONE_h);
	ISR_TX_DONE_Enable();
	
	/* Init DMAs */
	DMA_HAM2SER_Chan = DMA_HAM2SER_DmaInitialize(DMA_HAM2SER_BYTES_PER_BURST, DMA_HAM2SER_REQUEST_PER_BURST, 
	    HI16(DMA_HAM2SER_SRC_BASE), HI16(DMA_HAM2SER_DST_BASE));
	DMA_HAM2SER_TD[0] = CyDmaTdAllocate();
	CyDmaTdSetConfiguration(DMA_HAM2SER_TD[0], 1, DMA_HAM2SER_TD[0], 0);
	CyDmaTdSetAddress(DMA_HAM2SER_TD[0], LO16((uint32)SREG_HAM_OUT_Status_PTR), LO16((uint32)CREG_SER_Control_PTR));
	CyDmaChSetInitialTd(DMA_HAM2SER_Chan, DMA_HAM2SER_TD[0]);
	CyDmaChEnable(DMA_HAM2SER_Chan, 1);
	
}


/* Resolve next symbol */
CY_ISR(ISR_SYMB_h)
{
	uint8 sym = SREG_SYMB_Read() & lMask;
	switch(modLevel) {
		case M2:
			symbolNext = m2[sym];
			trackSum += m2Track[sym];
			break;
		case M4:
			symbolNext = m4[sym];
			trackSum += m4Track[sym];
			break;
		case M8:
			symbolNext = m8[sym];
			trackSum += m8Track[sym];
			break;
		case M16:
			symbolNext = m16[sym];
			trackSum += m16Track[sym];
			break;
		default:
			break;
	}
	symTx[symCnt++] = sym;
	
	ISR_SYMB_ClearPending();
}


/* Check if injection is required */
CY_ISR(ISR_INJ_CHECK_h)
{
	if (trackSum == 0) {
		
		CREG_INJ_RES_Write(1);
		CREG_INJ_RES_Write(0);
	}

	
	ISR_INJ_CHECK_ClearPending();
}


/* Resolve next injected symbol */
CY_ISR(ISR_INJ_h)
{
	switch(modLevel) {
		case M2:
			if (trackSum < 0) {
				
				symbolNext = m2[1];
				trackSum ++;
			}
			else {
				
				symbolNext = m2[0];
				trackSum --;
			}
			break;
		case M4:
			if (trackSum < 0) {
				
				if (trackSum < -1) {
					
					symbolNext = m4[3];
					trackSum += 3;
				}
				else {
					
					symbolNext = m4[2];
					trackSum += 1;
				}
			}
			else {
				
				if (trackSum > 1) {
					
					symbolNext = m4[0];
					trackSum -= 3;
				}
				else {
					
					symbolNext = m4[1];
					trackSum -= 1;
				}
			}
			break;
		case M8:
			if (trackSum < 0) {
				
				if (trackSum < -5) {
					
					symbolNext = m8[7];
					trackSum += 7;
				}
				else if (trackSum < -3) {
					
					symbolNext = m8[6];
					trackSum += 5;
				}
				else if (trackSum < -1) {
					
					symbolNext = m8[5];
					trackSum += 3;
				}
				else {
					
					symbolNext = m8[4];
					trackSum += 1;
				}
			}
			else {
				
				if (trackSum > 5) {
					
					symbolNext = m8[0];
					trackSum -= 7;
				}
				else if (trackSum > 3) {
					
					symbolNext = m8[1];
					trackSum -= 5;
				}
				else if (trackSum > 1) {
					
					symbolNext = m8[2];
					trackSum -= 3;
				}
				else {
					
					symbolNext = m8[3];
					trackSum -= 1;
				}
			}
			break;	
		default:
			break;
	}
	
	if (trackSum == 0) {
		
		CREG_INJ_RES_Write(1);
		CREG_INJ_RES_Write(0);
	}
		
	ISR_INJ_ClearPending();
}


/* ISR to shutdown transmission, after packet is transmitted */
CY_ISR(ISR_TX_DONE_h)
{
	FLAG_TX_EVENT = true;
	FLAG_TX_DONE = true;
	
	ISR_TX_DONE_ClearPending();
}
/* [] END OF FILE */