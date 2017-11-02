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
	
/* -------------------------------------------------------------------------*
 * This system part handles recection and decoding of incoming VLC packets	*
 * -------------------------------------------------------------------------*
*/
	
#include "project.h"
#include "main.h"
#include "dlm.h"

#include <stdint.h>
	
#define MASK_HEADER_DATA	0x0F

void INIT_RX_SUBSYSTEM(void);
CY_ISR(ISR_ADC_RX_h);
CY_ISR(ISR_HEADER_READ_h);


uint8 decodeHamming(uint8 hamWord);

extern uint8 H[3][7];
extern uint8 colValH[7];

uint8 hamWordCheck[16] = {
	0x00, 0x47, 0x26, 0x61, 0x15, 0x52, 0x33, 0x74,
	0x11, 0x4C, 0x2D, 0x6A, 0x1E, 0x59, 0x38, 0x3F
};


uint16 adcValue[3];
uint16 adcSum;
uint16 adcMean;

uint8 rxHi, rxLo;
uint8 rxModLevel;
uint16 rxSize;
int16 rxTrackSum;
uint8 rxSrc, rxDst;

uint8 headCnt;


#endif /* RXSUBSYSTEM_H */
/* [] END OF FILE */