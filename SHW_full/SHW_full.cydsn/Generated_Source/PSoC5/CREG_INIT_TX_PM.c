/*******************************************************************************
* File Name: CREG_INIT_TX_PM.c
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

#include "CREG_INIT_TX.h"

/* Check for removal by optimization */
#if !defined(CREG_INIT_TX_Sync_ctrl_reg__REMOVED)

static CREG_INIT_TX_BACKUP_STRUCT  CREG_INIT_TX_backup = {0u};

    
/*******************************************************************************
* Function Name: CREG_INIT_TX_SaveConfig
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
void CREG_INIT_TX_SaveConfig(void) 
{
    CREG_INIT_TX_backup.controlState = CREG_INIT_TX_Control;
}


/*******************************************************************************
* Function Name: CREG_INIT_TX_RestoreConfig
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
void CREG_INIT_TX_RestoreConfig(void) 
{
     CREG_INIT_TX_Control = CREG_INIT_TX_backup.controlState;
}


/*******************************************************************************
* Function Name: CREG_INIT_TX_Sleep
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
void CREG_INIT_TX_Sleep(void) 
{
    CREG_INIT_TX_SaveConfig();
}


/*******************************************************************************
* Function Name: CREG_INIT_TX_Wakeup
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
void CREG_INIT_TX_Wakeup(void)  
{
    CREG_INIT_TX_RestoreConfig();
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
