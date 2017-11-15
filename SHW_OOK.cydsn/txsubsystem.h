#ifndef TXSUBSYSTEM_H
#define TXSUBSYSTEM_H

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
#include <stdbool.h>
	
/* Defines for DMA_HAM2SER */
#define DMA_HAM2SER_BYTES_PER_BURST 1
#define DMA_HAM2SER_REQUEST_PER_BURST 1
#define DMA_HAM2SER_SRC_BASE (CYDEV_PERIPH_BASE)
#define DMA_HAM2SER_DST_BASE (CYDEV_PERIPH_BASE)

/* Variable declarations for DMA_HAM2SER */
uint8 DMA_HAM2SER_Chan;
uint8 DMA_HAM2SER_TD[1];

	
/* Define modulation level M in number of bits per symbol L */
#define M2	1
#define M4	2
#define M8	3
#define M16	4
#define M32	5


/* Prototypes and interrupt handlers */
void INIT_TX_SUBSYSTEM(void);
CY_ISR(ISR_SYMB_h);
CY_ISR(ISR_INJ_CHECK_h);
CY_ISR(ISR_INJ_h);
CY_ISR(ISR_TX_DONE_h);

bool FLAG_TX_EVENT;
bool FLAG_TX_DONE;

/* Variables */
uint8 modLevel;
uint8 m2[2]; 
uint8 m4[4];
uint8 m8[8];
uint8 m16[16];
uint8 m32[32];
int8 m2Track[2];
int8 m4Track[4];
int8 m8Track[8];
int8 m16Track[16];
int8 m32Track[32];

int16 trackSum;

uint8 symbolNext;
uint8 lMask;


uint8_t symTx[31];
uint8_t symCnt;



#endif /* TXSUBSYSTEM_H */
/* [] END OF FILE */