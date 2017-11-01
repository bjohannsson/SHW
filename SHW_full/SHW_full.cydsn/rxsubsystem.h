#ifndef RXSUBSYSTEM_H
#define RXSUBSYSTEM_H

/* ========================================
 *
 * SHW - Visible light Communication Controller
 * Bjarki Johannsson 2017
 * Open Source
 *
 *
 * ========================================
*/
	
#include "project.h"
#include "main.h"
#include "dlm.h"

#include <stdint.h>

void INIT_RX_SUBSYSTEM(void);
CY_ISR(ISR_HEADER_READ_h);
uint8 decodeHamming(uint8 hamWord);

extern uint8 H[3][7];
extern uint8 colValH[7];

uint16 adcValue;

uint8 rxModLevel;
uint16 rxLength;
int16 rxTrackSum;
uint8 rxSrc, rxDst;

uint8 headCnt;

uint8 hamWordCheck[16];
	
	
#endif /* RXSUBSYSTEM_H */
/* [] END OF FILE */