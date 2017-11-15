/*******************************************************************************
* File Name: CREG_RX_SLOT_OFFS_PM.c
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

#include "CREG_RX_SLOT_OFFS.h"

/* Check for removal by optimization */
#if !defined(CREG_RX_SLOT_OFFS_Sync_ctrl_reg__REMOVED)

static CREG_RX_SLOT_OFFS_BACKUP_STRUCT  CREG_RX_SLOT_OFFS_backup = {0u};

    
/*******************************************************************************
* Function Name: CREG_RX_SLOT_OFFS_SaveConfig
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
void CREG_RX_SLOT_OFFS_SaveConfig(void) 
{
    CREG_RX_SLOT_OFFS_backup.controlState = CREG_RX_SLOT_OFFS_Control;
}


/*******************************************************************************
* Function Name: CREG_RX_SLOT_OFFS_RestoreConfig
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
void CREG_RX_SLOT_OFFS_RestoreConfig(void) 
{
     CREG_RX_SLOT_OFFS_Control = CREG_RX_SLOT_OFFS_backup.controlState;
}


/*******************************************************************************
* Function Name: CREG_RX_SLOT_OFFS_Sleep
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
void CREG_RX_SLOT_OFFS_Sleep(void) 
{
    CREG_RX_SLOT_OFFS_SaveConfig();
}


/*******************************************************************************
* Function Name: CREG_RX_SLOT_OFFS_Wakeup
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
void CREG_RX_SLOT_OFFS_Wakeup(void)  
{
    CREG_RX_SLOT_OFFS_RestoreConfig();
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
