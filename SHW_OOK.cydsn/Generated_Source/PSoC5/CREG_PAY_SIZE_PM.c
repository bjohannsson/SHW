/*******************************************************************************
* File Name: CREG_PAY_SIZE_PM.c
* Version 1.80
*
* Description:
*  This file contains the setup, control, and status commands to support 
*  the component operation in the low power mode. 
*
* Note:
*
********************************************************************************
* Copyright 2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "CREG_PAY_SIZE.h"

/* Check for removal by optimization */
#if !defined(CREG_PAY_SIZE_Sync_ctrl_reg__REMOVED)

static CREG_PAY_SIZE_BACKUP_STRUCT  CREG_PAY_SIZE_backup = {0u};

    
/*******************************************************************************
* Function Name: CREG_PAY_SIZE_SaveConfig
********************************************************************************
*
* Summary:
*  Saves the control register value.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void CREG_PAY_SIZE_SaveConfig(void) 
{
    CREG_PAY_SIZE_backup.controlState = CREG_PAY_SIZE_Control;
}


/*******************************************************************************
* Function Name: CREG_PAY_SIZE_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the control register value.
*
* Parameters:
*  None
*
* Return:
*  None
*
*
*******************************************************************************/
void CREG_PAY_SIZE_RestoreConfig(void) 
{
     CREG_PAY_SIZE_Control = CREG_PAY_SIZE_backup.controlState;
}


/*******************************************************************************
* Function Name: CREG_PAY_SIZE_Sleep
********************************************************************************
*
* Summary:
*  Prepares the component for entering the low power mode.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void CREG_PAY_SIZE_Sleep(void) 
{
    CREG_PAY_SIZE_SaveConfig();
}


/*******************************************************************************
* Function Name: CREG_PAY_SIZE_Wakeup
********************************************************************************
*
* Summary:
*  Restores the component after waking up from the low power mode.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void CREG_PAY_SIZE_Wakeup(void)  
{
    CREG_PAY_SIZE_RestoreConfig();
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
