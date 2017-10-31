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

#include "rxsubsystem.h"

void INIT_RX_SUBSYSTEM(void)
{
	
}

CY_ISR(ISR_HEADER_READ_h)
{
	uint8 val = SREG_HEADER_Read();
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