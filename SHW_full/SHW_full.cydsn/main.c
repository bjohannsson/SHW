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

#include "main.h"





int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */

	INIT_SERIAL();
	INIT_DLM();
	INIT_DIMMING_CONTROL();
	INIT_PACKET_MANAGER();
	INIT_TX_SUBSYSTEM();
	INIT_RX_SUBSYSTEM();
	
	CyDelay(50);

    for(;;) {
        
		serialRead();
		
		if (FLAG_SER_EVENT) {
			
			if (FLAG_SER_TX_INIT) {
				
				setDMA(&packets4[0].payload[0], 4);
				symCnt = 0;
				trackSum = 0;
				CREG_INIT_TX_Write(1);
				CyDelayCycles(10);
				CREG_INIT_TX_Write(0);
				
				serialSend8bit(&symTx[0],1, SER_TX_SYM_TX+1);
				FLAG_SER_TX_INIT = false;
			}
			FLAG_SER_EVENT = false;
		}
		
		if (FLAG_TX_EVENT) {
			
			if (FLAG_TX_DONE) {
				
				serialSend8bit(&symTx[0], 4, SER_TX_SYM_TX);
				FLAG_TX_DONE = false;
			}
			FLAG_TX_EVENT = false;
		}
		
    }
}

/* [] END OF FILE */