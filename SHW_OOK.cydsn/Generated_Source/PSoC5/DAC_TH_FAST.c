/*******************************************************************************
* File Name: DAC_TH_FAST.c
* Version 2.10
*
* Description:
*  This file provides the source code of APIs for the DVDAC component.
*
********************************************************************************
* Copyright 2013, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "DAC_TH_FAST.h"
#include "DAC_TH_FAST_VDAC8.h"
#include "CyDmac.h"
#include "DAC_TH_FAST_DMA_dma.H"

#if(DAC_TH_FAST_INTERNAL_CLOCK_USED)
    #include "DAC_TH_FAST_IntClock.h"
#endif /* DAC_TH_FAST_INTERNAL_CLOCK_USED */


static uint8 DAC_TH_FAST_ditheredValues[16u] = {0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 
                                                0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u};


uint8 DAC_TH_FAST_initVar = 0u;

static uint8 DAC_TH_FAST_dmaChan;
static uint8 DAC_TH_FAST_dmaTd = CY_DMA_INVALID_TD;

static void DAC_TH_FAST_InitDma(void)  ;


/*******************************************************************************
* Function Name: DAC_TH_FAST_Init
********************************************************************************
*
* Summary:
*  Initializes or restores the component according to the customizer Configure
*  dialog settings. It is not necessary to call DAC_TH_FAST_Init() because
*  the DAC_TH_FAST_Start() API calls this function and is the preferred
*  method to begin component operation.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Side Effects:
*  All registers will be set to values according to the customizer Configure
*  dialog.
*
* Global variables:
*  None
*
*******************************************************************************/
void DAC_TH_FAST_Init(void) 
{
    DAC_TH_FAST_VDAC8_Init();

    if(CY_DMA_INVALID_TD == DAC_TH_FAST_dmaTd)
    {
        DAC_TH_FAST_InitDma();
    }
}


/*******************************************************************************
* Function Name: DAC_TH_FAST_Enable
********************************************************************************
*
* Summary:
*  Activates the hardware and begins component operation. It is not necessary to
*  call DAC_TH_FAST_Enable() because the DAC_TH_FAST_Start() API calls
*  this function, which is the preferred method to begin component operation.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  None
*
*******************************************************************************/
void DAC_TH_FAST_Enable(void) 
{
    (void) CyDmaChEnable(DAC_TH_FAST_dmaChan, 1u);

    #if(DAC_TH_FAST_INTERNAL_CLOCK_USED)
        DAC_TH_FAST_IntClock_Start();
    #endif /* DAC_TH_FAST_INTERNAL_CLOCK_USED */

    DAC_TH_FAST_VDAC8_Enable();
}


/*******************************************************************************
* Function Name: DAC_TH_FAST_Start
********************************************************************************
*
* Summary:
*  Performs all of the required initialization for the component and enables
*  power to the block. The first time the routine is executed, the component is
*  initialized to the configured settings. When called to restart the DVDAC
*  following a DAC_TH_FAST_Stop() call, the current component parameter
*  settings are retained.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Side Effects:
*  If the DAC_TH_FAST_initVar variable is already set, this function only
*  calls the DAC_TH_FAST_Enable() function.
*
* Global variables:
*  DAC_TH_FAST_initVar - indicates whether the DVDAC has been initialized.
*  The variable is initialized to 0 and set to 1 the first time DVDAC_Start()
*  is called. This allows the component to restart without reinitialization
*  after the first call to the DAC_TH_FAST_Start() routine. If
*  reinitialization of the component is required, then the
*  DAC_TH_FAST_Init() function can be called before the
*  DAC_TH_FAST_Start() or DAC_TH_FAST_Enable() function.
*
*******************************************************************************/
void DAC_TH_FAST_Start(void) 
{
    /* Hardware initiazation only needs to occure the first time */
    if(0u == DAC_TH_FAST_initVar)
    {
        DAC_TH_FAST_Init();
        DAC_TH_FAST_initVar = 1u;
    }

    DAC_TH_FAST_Enable();
}


/*******************************************************************************
* Function Name: DAC_TH_FAST_Stop
********************************************************************************
*
* Summary:
*  Stops the component and turns off the analog blocks in the DVDAC.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  None
*
*******************************************************************************/
void DAC_TH_FAST_Stop(void) 
{
    #if(DAC_TH_FAST_INTERNAL_CLOCK_USED)
        DAC_TH_FAST_IntClock_Stop();
    #endif /* DAC_TH_FAST_INTERNAL_CLOCK_USED */

    (void) CyDmaChDisable(DAC_TH_FAST_dmaChan);
    DAC_TH_FAST_VDAC8_Stop();
}


/*******************************************************************************
* Function Name: DAC_TH_FAST_SetValue
********************************************************************************
*
* Summary:
*  Sets the DVDACs output. The function populates the SRAM array based on the
*  value and the resolution setting. That array is then transferred to the
*  internal VDAC by DMA.
*
* Parameters:
*  (uint16) value:  The maximum value will be dependent on the resolution
*  selected:
*   Resolution       Valid range
*        9 bits       0x0 - 0x1FE
*       10 bits       0x0 - 0x3FC
*       11 bits       0x0 - 0x7F8
*       12 bits       0x0 - 0xFF0
*
*  This value includes an integer portion and a fractional portion that varies
*  depending on number of bits of resolution:
*   - 9-bits:  1 fractional bit
*   - 10-bits: 2 fractional bits
*   - 11-bits: 3 fractional bits
*   - 12-bits: 4 fractional bits
*
* Return:
*  None
*
* Global variables:
*  None
*
*******************************************************************************/
void DAC_TH_FAST_SetValue(uint16 value) 
{
    uint8  lowCount  = (uint8)(value & DAC_TH_FAST_FRACTIONAL_PORTION_MASK);
    uint8 highCount  = (uint8)(value >> DAC_TH_FAST_INTEGER_PORTION_SHIFT);
    uint8 i;


    CYASSERT(value <= DAC_TH_FAST_DVDAC_MAX_VALUE);

    if (DAC_TH_FAST_INTEGER_PORTION_MAX_VALUE == highCount)
    {
        for (i = 0u; i < DAC_TH_FAST_DITHERED_ARRAY_SIZE; i++)
        {
            DAC_TH_FAST_ditheredValues[i] = DAC_TH_FAST_INTEGER_PORTION_MAX_VALUE;
        }
    }
    else
    {
        for(i = 0u; i < DAC_TH_FAST_DITHERED_ARRAY_SIZE; i++)
        {
            if(i < (DAC_TH_FAST_DITHERED_ARRAY_SIZE - lowCount))
            {
                DAC_TH_FAST_ditheredValues[i] = highCount;
            }
            else
            {
                DAC_TH_FAST_ditheredValues[i] = highCount + 1u;
            }
        }
    }
}


/*******************************************************************************
* Function Name: DAC_TH_FAST_InitDma
********************************************************************************
*
* Summary:
*  Configures a DMA transfer of channel values from memory to VDAC.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
static void DAC_TH_FAST_InitDma(void)  
{
    /***************************************************************************
    * Transfers channel values from SRAM to VDAC register. One byte transfer,
    * each burst requires a request.
    ***************************************************************************/
    DAC_TH_FAST_dmaChan = DAC_TH_FAST_DMA_DmaInitialize(
                                    DAC_TH_FAST_DMA_BYTES_PER_BURST,
                                    DAC_TH_FAST_DMA_REQUEST_PER_BURST,
                                    HI16(DAC_TH_FAST_DMA_SRC_BASE),
                                    HI16(DAC_TH_FAST_DMA_DST_BASE));

    DAC_TH_FAST_dmaTd = CyDmaTdAllocate();


    /***************************************************************************
    * One TD looping on itself, increment the source address, but not the
    * destination address.
    ***************************************************************************/
    (void) CyDmaTdSetConfiguration( DAC_TH_FAST_dmaTd,
                                    DAC_TH_FAST_DITHERED_ARRAY_SIZE,
                                    DAC_TH_FAST_dmaTd,
                                    (uint8) CY_DMA_TD_INC_SRC_ADR);

    /* Transfers the value for each channel from memory to VDAC */
    (void) CyDmaTdSetAddress(   DAC_TH_FAST_dmaTd,
                                LO16((uint32)DAC_TH_FAST_ditheredValues),
                                LO16((uint32)DAC_TH_FAST_VDAC8_Data_PTR));

    (void) CyDmaChSetInitialTd(DAC_TH_FAST_dmaChan, DAC_TH_FAST_dmaTd);
}

/* [] END OF FILE */

