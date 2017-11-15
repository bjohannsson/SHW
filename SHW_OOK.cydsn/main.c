/* ========================================
 *
 * SHW - Visible light Communication Controller
 * Bjarki Johannsson 2017
 * Open Source
 *
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
//	INIT_RX_SUBSYSTEM();
	
	CyDelay(50);

    for(;;) {
        
		serialRead();
		
		if (FLAG_SER_EVENT) {
			
			if (FLAG_SER_TX_INIT) {
				
				setDMA(&packets4[0].payload[0], PACKET_SIZE_4);
				CREG_PAY_SIZE_Write(2);
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
		
		if (FLAG_IC_EVENT) {
			
			switch(IC_EVENT) {
				
				case IC_EVENT_ADC_TH:
					calculateTh();
					break;
				case IC_EVENT_TH:
					headCnt = 0;
					// init preamble detection
					break;
				default:
					break;
			}
		}
		
    }
}

void INIT_SYSTEM(void)
{
	
	
}

/* [] END OF FILE */