/*******************************************************************************
* File Name: SREG_HEAD.c  
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

#include "SREG_HEAD.h"

#if !defined(SREG_HEAD_sts_sts_reg__REMOVED) /* Check for removal by optimization */


/*******************************************************************************
* Function Name: SREG_HEAD_Read
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
uint8 SREG_HEAD_Read(void) 
{ 
    return SREG_HEAD_Status;
}


/*******************************************************************************
* Function Name: SREG_HEAD_InterruptEnable
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
void SREG_HEAD_InterruptEnable(void) 
{
    uint8 interruptState;
    interruptState = CyEnterCriticalSection();
    SREG_HEAD_Status_Aux_Ctrl |= SREG_HEAD_STATUS_INTR_ENBL;
    CyExitCriticalSection(interruptState);
}


/*******************************************************************************
* Function Name: SREG_HEAD_InterruptDisable
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
void SREG_HEAD_InterruptDisable(void) 
{
    uint8 interruptState;
    interruptState = CyEnterCriticalSection();
    SREG_HEAD_Status_Aux_Ctrl &= (uint8)(~SREG_HEAD_STATUS_INTR_ENBL);
    CyExitCriticalSection(interruptState);
}


/*******************************************************************************
* Function Name: SREG_HEAD_WriteMask
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
void SREG_HEAD_WriteMask(uint8 mask) 
{
    #if(SREG_HEAD_INPUTS < 8u)
    	mask &= ((uint8)(1u << SREG_HEAD_INPUTS) - 1u);
	#endif /* End SREG_HEAD_INPUTS < 8u */
    SREG_HEAD_Status_Mask = mask;
}


/*******************************************************************************
* Function Name: SREG_HEAD_ReadMask
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
uint8 SREG_HEAD_ReadMask(void) 
{
    return SREG_HEAD_Status_Mask;
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
