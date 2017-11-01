/*******************************************************************************
* File Name: CREG_INIT_TX.c  
* Version 1.80
*
* Description:
*  This file contains API to enable firmware control of a Control Register.
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "CREG_INIT_TX.h"

/* Check for removal by optimization */
#if !defined(CREG_INIT_TX_Sync_ctrl_reg__REMOVED)

    
/*******************************************************************************
* Function Name: CREG_INIT_TX_Write
********************************************************************************
*
* Summary:
*  Write a byte to the Control Register.
*
* Parameters:
*  control:  The value to be assigned to the Control Register.
*
* Return:
*  None.
*
*******************************************************************************/
void CREG_INIT_TX_Write(uint8 control) 
{
    CREG_INIT_TX_Control = control;
}


/*******************************************************************************
* Function Name: CREG_INIT_TX_Read
********************************************************************************
*
* Summary:
*  Reads the current value assigned to the Control Register.
*
* Parameters:
*  None.
*
* Return:
*  Returns the current value in the Control Register.
*
*******************************************************************************/
uint8 CREG_INIT_TX_Read(void) 
{
    return CREG_INIT_TX_Control;
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
