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

void INIT_RX_SUBSYSTEM(void)
{

	hamWordCheck[0] = 0x00;
	hamWordCheck[1] = 0x47;
	hamWordCheck[2] = 0x26;
	hamWordCheck[3] = 0x61;
	hamWordCheck[4] = 0x15;
	hamWordCheck[5] = 0x52;
	hamWordCheck[6] = 0x33;
	hamWordCheck[7] = 0x74;
	hamWordCheck[8] = 0x11;
	hamWordCheck[9] = 0x4C;
	hamWordCheck[10] = 0x2D;
	hamWordCheck[11] = 0x6A;
	hamWordCheck[12] = 0x1E;
	hamWordCheck[13] = 0x59;
	hamWordCheck[14] = 0x38;
	hamWordCheck[15] = 0x3F;
}

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

CY_ISR(ISR_HEADER_READ_h)
{
	uint8 val = SREG_HEAD_Read();
	if (headCnt == 0) { //src
		
		rxSrc = val;
	}
	else if (headCnt == 1) { //dst
		
		if (val == deviceAddress) {
			
			rxDst = val;
			// packet man
		}
	}
	else if (headCnt == 2) {
		
		rxModLevel = val;
	}
	else if (headCnt == 3) {
	
		rxLength = val;
	}
	
	ISR_HEADER_READ_ClearPending();
}

/* [] END OF FILE */