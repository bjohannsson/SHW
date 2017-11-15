/*******************************************************************************
* File Name: COMP_FAST.c
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

#include "COMP_FAST.h"

static COMP_FAST_backupStruct COMP_FAST_backup;


/*******************************************************************************
* Function Name: COMP_FAST_SaveConfig
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
void COMP_FAST_SaveConfig(void) 
{
    /* Empty since all are system reset for retention flops */
}


/*******************************************************************************
* Function Name: COMP_FAST_RestoreConfig
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
void COMP_FAST_RestoreConfig(void) 
{
    /* Empty since all are system reset for retention flops */    
}


/*******************************************************************************
* Function Name: COMP_FAST_Sleep
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
*  COMP_FAST_backup.enableState:  Is modified depending on the enable 
*   state of the block before entering sleep mode.
*
*******************************************************************************/
void COMP_FAST_Sleep(void) 
{
    /* Save Comp's enable state */    
    if(COMP_FAST_ACT_PWR_EN == (COMP_FAST_PWRMGR & COMP_FAST_ACT_PWR_EN))
    {
        /* Comp is enabled */
        COMP_FAST_backup.enableState = 1u;
    }
    else
    {
        /* Comp is disabled */
        COMP_FAST_backup.enableState = 0u;
    }    
    
    COMP_FAST_Stop();
    COMP_FAST_SaveConfig();
}


/*******************************************************************************
* Function Name: COMP_FAST_Wakeup
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
*  COMP_FAST_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void COMP_FAST_Wakeup(void) 
{
    COMP_FAST_RestoreConfig();
    
    if(COMP_FAST_backup.enableState == 1u)
    {
        /* Enable Comp's operation */
        COMP_FAST_Enable();

    } /* Do nothing if Comp was disabled before */ 
}


/* [] END OF FILE */
