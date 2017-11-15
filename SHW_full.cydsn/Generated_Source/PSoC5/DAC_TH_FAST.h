/*******************************************************************************
* File Name: DAC_TH_FAST.h
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

#if !defined(CY_DVDAC_DAC_TH_FAST_H)
#define CY_DVDAC_DAC_TH_FAST_H

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
} DAC_TH_FAST_BACKUP_STRUCT;

/* Component init state */
extern uint8 DAC_TH_FAST_initVar;


/***************************************
*        API constants
***************************************/
#define DAC_TH_FAST_RESOLUTION                 (12u)
#define DAC_TH_FAST_INTERNAL_CLOCK_USED        (1u)

#define DAC_TH_FAST_INTEGER_PORTION_SHIFT      (DAC_TH_FAST_RESOLUTION - 8u)
#define DAC_TH_FAST_DITHERED_ARRAY_SIZE        ((uint8)(1u << DAC_TH_FAST_INTEGER_PORTION_SHIFT))
#define DAC_TH_FAST_FRACTIONAL_PORTION_MASK    (DAC_TH_FAST_DITHERED_ARRAY_SIZE - 1u)
#define DAC_TH_FAST_INTEGER_PORTION_MAX_VALUE  (0xFFu)

/* DMA Configuration */
#define DAC_TH_FAST_DMA_BYTES_PER_BURST        (1u)
#define DAC_TH_FAST_DMA_REQUEST_PER_BURST      (1u)
#define DAC_TH_FAST_DMA_SRC_BASE               (CYDEV_SRAM_BASE)
#define DAC_TH_FAST_DMA_DST_BASE               (CYDEV_PERIPH_BASE)


#if   (DAC_TH_FAST_RESOLUTION ==  9u)
    #define DAC_TH_FAST_DVDAC_MAX_VALUE        (0x1FEu)
#elif (DAC_TH_FAST_RESOLUTION == 10u)
    #define DAC_TH_FAST_DVDAC_MAX_VALUE        (0x3FCu)
#elif (DAC_TH_FAST_RESOLUTION == 11u)
    #define DAC_TH_FAST_DVDAC_MAX_VALUE        (0x7F8u)
#else   /* Resolution 12 bits */
    #define DAC_TH_FAST_DVDAC_MAX_VALUE        (0xFF0u)
#endif  /* (DAC_TH_FAST_RESOLUTION ==  9u) */


/***************************************
*        Function Prototypes
***************************************/

void DAC_TH_FAST_Init(void)                ;
void DAC_TH_FAST_Enable(void)              ;
void DAC_TH_FAST_Start(void)               ;
void DAC_TH_FAST_Stop(void)                ;
void DAC_TH_FAST_SetValue(uint16 value)    ;
void DAC_TH_FAST_Sleep(void)               ;
void DAC_TH_FAST_Wakeup(void)              ;
void DAC_TH_FAST_SaveConfig(void)          ;
void DAC_TH_FAST_RestoreConfig(void)       ;

#endif /* CY_DVDAC_DAC_TH_FAST_H */


/* [] END OF FILE */
