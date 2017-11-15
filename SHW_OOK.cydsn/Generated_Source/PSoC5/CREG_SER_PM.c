/*******************************************************************************
* File Name: CREG_SER_PM.c
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

#include "CREG_SER.h"

/* Check for removal by optimization */
#if !defined(CREG_SER_Sync_ctrl_reg__REMOVED)

static CREG_SER_BACKUP_STRUCT  CREG_SER_backup = {0u};

    
/*******************************************************************************
* Function Name: CREG_SER_SaveConfig
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
void CREG_SER_SaveConfig(void) 
{
    CREG_SER_backup.controlState = CREG_SER_Control;
}


/*******************************************************************************
* Function Name: CREG_SER_RestoreConfig
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
void CREG_SER_RestoreConfig(void) 
{
     CREG_SER_Control = CREG_SER_backup.controlState;
}


/*******************************************************************************
* Function Name: CREG_SER_Sleep
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
void CREG_SER_Sleep(void) 
{
    CREG_SER_SaveConfig();
}


/*******************************************************************************
* Function Name: CREG_SER_Wakeup
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
void CREG_SER_Wakeup(void)  
{
    CREG_SER_RestoreConfig();
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
