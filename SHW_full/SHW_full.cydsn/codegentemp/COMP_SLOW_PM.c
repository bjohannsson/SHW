/*******************************************************************************
* File Name: COMP_SLOW.c
* Version 2.0
*
* Description:
*  This file provides the power management source code APIs for the
*  Comparator.
*
* Note:
*  None
*
********************************************************************************
* Copyright 2008-2012, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "COMP_SLOW.h"

static COMP_SLOW_backupStruct COMP_SLOW_backup;


/*******************************************************************************
* Function Name: COMP_SLOW_SaveConfig
********************************************************************************
*
* Summary:
*  Save the current user configuration
*
* Parameters:
*  void:
*
* Return:
*  void
*
*******************************************************************************/
void COMP_SLOW_SaveConfig(void) 
{
    /* Empty since all are system reset for retention flops */
}


/*******************************************************************************
* Function Name: COMP_SLOW_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the current user configuration.
*
* Parameters:
*  void
*
* Return:
*  void
*
********************************************************************************/
void COMP_SLOW_RestoreConfig(void) 
{
    /* Empty since all are system reset for retention flops */    
}


/*******************************************************************************
* Function Name: COMP_SLOW_Sleep
********************************************************************************
*
* Summary:
*  Stop and Save the user configuration
*
* Parameters:
*  void:
*
* Return:
*  void
*
* Global variables:
*  COMP_SLOW_backup.enableState:  Is modified depending on the enable 
*   state of the block before entering sleep mode.
*
*******************************************************************************/
void COMP_SLOW_Sleep(void) 
{
    /* Save Comp's enable state */    
    if(COMP_SLOW_ACT_PWR_EN == (COMP_SLOW_PWRMGR & COMP_SLOW_ACT_PWR_EN))
    {
        /* Comp is enabled */
        COMP_SLOW_backup.enableState = 1u;
    }
    else
    {
        /* Comp is disabled */
        COMP_SLOW_backup.enableState = 0u;
    }    
    
    COMP_SLOW_Stop();
    COMP_SLOW_SaveConfig();
}


/*******************************************************************************
* Function Name: COMP_SLOW_Wakeup
********************************************************************************
*
* Summary:
*  Restores and enables the user configuration
*  
* Parameters:
*  void
*
* Return:
*  void
*
* Global variables:
*  COMP_SLOW_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void COMP_SLOW_Wakeup(void) 
{
    COMP_SLOW_RestoreConfig();
    
    if(COMP_SLOW_backup.enableState == 1u)
    {
        /* Enable Comp's operation */
        COMP_SLOW_Enable();

    } /* Do nothing if Comp was disabled before */ 
}


/* [] END OF FILE */
