/*******************************************************************************
* File Name: SREG_RX_SLOT.c  
* Version 1.90
*
* Description:
*  This file contains API to enable firmware to read the value of a Status 
*  Register.
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "SREG_RX_SLOT.h"

#if !defined(SREG_RX_SLOT_sts_sts_reg__REMOVED) /* Check for removal by optimization */


/*******************************************************************************
* Function Name: SREG_RX_SLOT_Read
********************************************************************************
*
* Summary:
*  Reads the current value assigned to the Status Register.
*
* Parameters:
*  None.
*
* Return:
*  The current value in the Status Register.
*
*******************************************************************************/
uint8 SREG_RX_SLOT_Read(void) 
{ 
    return SREG_RX_SLOT_Status;
}


/*******************************************************************************
* Function Name: SREG_RX_SLOT_InterruptEnable
********************************************************************************
*
* Summary:
*  Enables the Status Register interrupt.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
void SREG_RX_SLOT_InterruptEnable(void) 
{
    uint8 interruptState;
    interruptState = CyEnterCriticalSection();
    SREG_RX_SLOT_Status_Aux_Ctrl |= SREG_RX_SLOT_STATUS_INTR_ENBL;
    CyExitCriticalSection(interruptState);
}


/*******************************************************************************
* Function Name: SREG_RX_SLOT_InterruptDisable
********************************************************************************
*
* Summary:
*  Disables the Status Register interrupt.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
void SREG_RX_SLOT_InterruptDisable(void) 
{
    uint8 interruptState;
    interruptState = CyEnterCriticalSection();
    SREG_RX_SLOT_Status_Aux_Ctrl &= (uint8)(~SREG_RX_SLOT_STATUS_INTR_ENBL);
    CyExitCriticalSection(interruptState);
}


/*******************************************************************************
* Function Name: SREG_RX_SLOT_WriteMask
********************************************************************************
*
* Summary:
*  Writes the current mask value assigned to the Status Register.
*
* Parameters:
*  mask:  Value to write into the mask register.
*
* Return:
*  None.
*
*******************************************************************************/
void SREG_RX_SLOT_WriteMask(uint8 mask) 
{
    #if(SREG_RX_SLOT_INPUTS < 8u)
    	mask &= ((uint8)(1u << SREG_RX_SLOT_INPUTS) - 1u);
	#endif /* End SREG_RX_SLOT_INPUTS < 8u */
    SREG_RX_SLOT_Status_Mask = mask;
}


/*******************************************************************************
* Function Name: SREG_RX_SLOT_ReadMask
********************************************************************************
*
* Summary:
*  Reads the current interrupt mask assigned to the Status Register.
*
* Parameters:
*  None.
*
* Return:
*  The value of the interrupt mask of the Status Register.
*
*******************************************************************************/
uint8 SREG_RX_SLOT_ReadMask(void) 
{
    return SREG_RX_SLOT_Status_Mask;
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
