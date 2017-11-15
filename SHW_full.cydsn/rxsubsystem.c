/* ========================================
 *
 * SHW - Visible light Communication Controller
 * Bjarki Johannsson 2017
 * Open Source
 *
 *
 * ========================================
*/

#include "rxsubsystem.h"


/* -------------------------------------------------------------------------*
 * Function to initialize the RX-Subsystem of the controller				*
 * -------------------------------------------------------------------------*
*/
void INIT_RX_SUBSYSTEM(void)
{

	/* Enable interrupts */	
	ISR_ADC_RX_StartEx(ISR_ADC_RX_h);
	ISR_ADC_RX_Enable();
	ISR_HEADER_READ_StartEx(ISR_HEADER_READ_h);
	ISR_HEADER_READ_Enable();
	
}


/* -------------------------------------------------------------------------*
 * Function to decode a received Hamming codeword							*
 * -------------------------------------------------------------------------*
*/
uint8 decodeHamming(uint8 hamWord)
{
	uint8 row, col, s[3];
	uint8 word;
	
	/* If there's no error, find the matching Hamming word */
	for (word=0; word<16; word++) {
		
		if (hamWord == hamWordCheck[word]) {
			
			return i;
		}
	}
	
	/* If error, do syndrome decoding */
	for (row=0; row<3; row++) {
		
		for (col=0; col<7; col++) {
		
			s[row] ^= (hamWord & 1<<(7-col))&H[row][col];
		}
	}
	
	uint8 syndrome;
	for (row = 0; row<3; row++) {
		
		syndrome = (syndrome | (s[row]&0x01) << (2-row));
	}
		
	for (col = 0; col<7; col++) {
		
		if (syndrome == colValH[col]) {
			
			return (hamWord ^= (1<<col));
		}
	}
	
	return 1;
}

/* -------------------------------------------------------------------------*
 * Interrupt handler, getting average adc value for demodulation			*
 * -------------------------------------------------------------------------*
*/
CY_ISR(ISR_ADC_RX_h)
{
	
	adcSum = 0;
	for (i=0; i<3; i++) {
		
		adcSum += adcValue[i];
	}
	adcMean = adcSum / 3;
	
	
	
	ISR_ADC_RX_ClearPending();
}

/* -------------------------------------------------------------------------*
 * Interrupt handler, reading header field contents of an incoming packet	*
 * -------------------------------------------------------------------------*
*/
CY_ISR(ISR_HEADER_READ_h)
{
	
	uint8 val = (SREG_HEAD_Read() & MASK_HEADER_DATA);
	switch(headCnt) {
		
		case 0:
			rxSrc = val;
			break;
		case 1:
			rxDst = val;
			break;
		case 2:
			rxModLevel = val;
			break;
		case 3:
			rxSize = val;
			break;
		default:
			break;
	}
	
	headCnt++;
	ISR_HEADER_READ_ClearPending();
}

/* [] END OF FILE */