/*******************************************************************************
* File Name: SREG_HAM_OUT.c  
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

#include "SREG_HAM_OUT.h"

#if !defined(SREG_HAM_OUT_sts_sts_reg__REMOVED) /* Check for removal by optimization */


/*******************************************************************************
* Function Name: SREG_HAM_OUT_Read
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
uint8 SREG_HAM_OUT_Read(void) 
{ 
    return SREG_HAM_OUT_Status;
}


/*******************************************************************************
* Function Name: SREG_HAM_OUT_InterruptEnable
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
void SREG_HAM_OUT_InterruptEnable(void) 
{
    uint8 interruptState;
    interruptState = CyEnterCriticalSection();
    SREG_HAM_OUT_Status_Aux_Ctrl |= SREG_HAM_OUT_STATUS_INTR_ENBL;
    CyExitCriticalSection(interruptState);
}


/*******************************************************************************
* Function Name: SREG_HAM_OUT_InterruptDisable
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
void SREG_HAM_OUT_InterruptDisable(void) 
{
    uint8 interruptState;
    interruptState = CyEnterCriticalSection();
    SREG_HAM_OUT_Status_Aux_Ctrl &= (uint8)(~SREG_HAM_OUT_STATUS_INTR_ENBL);
    CyExitCriticalSection(interruptState);
}


/*******************************************************************************
* Function Name: SREG_HAM_OUT_WriteMask
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
void SREG_HAM_OUT_WriteMask(uint8 mask) 
{
    #if(SREG_HAM_OUT_INPUTS < 8u)
    	mask &= ((uint8)(1u << SREG_HAM_OUT_INPUTS) - 1u);
	#endif /* End SREG_HAM_OUT_INPUTS < 8u */
    SREG_HAM_OUT_Status_Mask = mask;
}


/*******************************************************************************
* Function Name: SREG_HAM_OUT_ReadMask
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
uint8 SREG_HAM_OUT_ReadMask(void) 
{
    return SREG_HAM_OUT_Status_Mask;
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
