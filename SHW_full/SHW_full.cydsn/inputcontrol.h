#ifndef INPUTCONTROL_H
#define INPUTCONTROL_H

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
#include "stdbool.h"
#include "math.h"

/* AD5241 defines */
#define I2C_ADDR_AD5241_WRITE		0x58
#define I2C_ADDR_AD5241_READ		0x59
#define I2C_INSTR_AD5241_NONE		0x00
#define I2C_INSTR_AD5241_MSRESET	0x40

/* Dynamic threshold defines */
#define N_TH_FAST	8
#define N_TH_SLOW	32

/* Defines for DMA_AVG */
#define DMA_AVG_BYTES_PER_BURST 2
#define DMA_AVG_REQUEST_PER_BURST 1
#define DMA_AVG_SRC_BASE (CYDEV_PERIPH_BASE)
#define DMA_AVG_DST_BASE (CYDEV_SRAM_BASE)


/* Functions and handlers prototypes */
void INIT_INPUT_CONTROL();
CY_ISR(ISR_AVG_h);
CY_ISR(ISR_TH_h);
CY_ISR(ISR_I2C_h);
void digipotSet(uint8 val);
void digipotGet(uint8 val);
void calculateTh(void);

/* Variables */
uint8 DMA_AVG_Chan;
uint8 DMA_AVG_TD[1];
uint8 digipotTargetVal, digipotCheckVal;

uint16 avgCurrSample;

uint16 thSlowBuffer[N_TH_SLOW];
uint8 thsi; // buffer index for slow threshold
uint32 thSlowSum;
uint16 thSlowMean;
uint16 thSlowStdBuffer[N_TH_SLOW];
uint16 thSlowStdCurr;
uint32 thSlowStdSum;
uint16 thSlowStd;
int16 thStdTemp;
uint16 thSlowValue;
bool thFlag;
uint16 thCnt;

uint16 thFastBuffer[N_TH_FAST];
uint8 thfi; // buffer index for fast threshold
uint32 thFastSum;
uint16 thFastMean;
uint16 thFastStdBuffer[N_TH_FAST];
uint16 thFastStdCurr;
uint32 thFastStdSum;
uint16 thFastStd;
int16 thStdTemp;
uint16 thFastValue;
	
#endif
/* [] END OF FILE */