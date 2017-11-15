/*******************************************************************************
* File Name: DAC_TH_SLOW.h
* Version 2.10
*
* Description:
*  This file provides constants and parameter values for the DVDAC component.
*
********************************************************************************
* Copyright 2013, Cypress Semiconductor Corporation. All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_DVDAC_DAC_TH_SLOW_H)
#define CY_DVDAC_DAC_TH_SLOW_H

#include "cydevice_trm.h"
#include "cyfitter.h"
#include "cytypes.h"


/***************************************
*   Data Struct Definition
***************************************/

/* Structure to save state before go to sleep */
typedef struct
{
    uint8  enableState;
} DAC_TH_SLOW_BACKUP_STRUCT;

/* Component init state */
extern uint8 DAC_TH_SLOW_initVar;


/***************************************
*        API constants
***************************************/
#define DAC_TH_SLOW_RESOLUTION                 (12u)
#define DAC_TH_SLOW_INTERNAL_CLOCK_USED        (1u)

#define DAC_TH_SLOW_INTEGER_PORTION_SHIFT      (DAC_TH_SLOW_RESOLUTION - 8u)
#define DAC_TH_SLOW_DITHERED_ARRAY_SIZE        ((uint8)(1u << DAC_TH_SLOW_INTEGER_PORTION_SHIFT))
#define DAC_TH_SLOW_FRACTIONAL_PORTION_MASK    (DAC_TH_SLOW_DITHERED_ARRAY_SIZE - 1u)
#define DAC_TH_SLOW_INTEGER_PORTION_MAX_VALUE  (0xFFu)

/* DMA Configuration */
#define DAC_TH_SLOW_DMA_BYTES_PER_BURST        (1u)
#define DAC_TH_SLOW_DMA_REQUEST_PER_BURST      (1u)
#define DAC_TH_SLOW_DMA_SRC_BASE               (CYDEV_SRAM_BASE)
#define DAC_TH_SLOW_DMA_DST_BASE               (CYDEV_PERIPH_BASE)


#if   (DAC_TH_SLOW_RESOLUTION ==  9u)
    #define DAC_TH_SLOW_DVDAC_MAX_VALUE        (0x1FEu)
#elif (DAC_TH_SLOW_RESOLUTION == 10u)
    #define DAC_TH_SLOW_DVDAC_MAX_VALUE        (0x3FCu)
#elif (DAC_TH_SLOW_RESOLUTION == 11u)
    #define DAC_TH_SLOW_DVDAC_MAX_VALUE        (0x7F8u)
#else   /* Resolution 12 bits */
    #define DAC_TH_SLOW_DVDAC_MAX_VALUE        (0xFF0u)
#endif  /* (DAC_TH_SLOW_RESOLUTION ==  9u) */


/***************************************
*        Function Prototypes
***************************************/

void DAC_TH_SLOW_Init(void)                ;
void DAC_TH_SLOW_Enable(void)              ;
void DAC_TH_SLOW_Start(void)               ;
void DAC_TH_SLOW_Stop(void)                ;
void DAC_TH_SLOW_SetValue(uint16 value)    ;
void DAC_TH_SLOW_Sleep(void)               ;
void DAC_TH_SLOW_Wakeup(void)              ;
void DAC_TH_SLOW_SaveConfig(void)          ;
void DAC_TH_SLOW_RestoreConfig(void)       ;

#endif /* CY_DVDAC_DAC_TH_SLOW_H */


/* [] END OF FILE */
