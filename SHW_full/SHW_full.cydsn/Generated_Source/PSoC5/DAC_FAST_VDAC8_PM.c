/*******************************************************************************
* File Name: DAC_FAST_VDAC8_PM.c  
* Version 1.90
*
* Description:
*  This file provides the power management source code to API for the
*  VDAC8.  
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

#include "DAC_FAST_VDAC8.h"

static DAC_FAST_VDAC8_backupStruct DAC_FAST_VDAC8_backup;


/*******************************************************************************
* Function Name: DAC_FAST_VDAC8_SaveConfig
********************************************************************************
* Summary:
*  Save the current user configuration
*
* Parameters:  
*  void  
*
* Return: 
*  void
*
*******************************************************************************/
void DAC_FAST_VDAC8_SaveConfig(void) 
{
    if (!((DAC_FAST_VDAC8_CR1 & DAC_FAST_VDAC8_SRC_MASK) == DAC_FAST_VDAC8_SRC_UDB))
    {
        DAC_FAST_VDAC8_backup.data_value = DAC_FAST_VDAC8_Data;
    }
}


/*******************************************************************************
* Function Name: DAC_FAST_VDAC8_RestoreConfig
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
*******************************************************************************/
void DAC_FAST_VDAC8_RestoreConfig(void) 
{
    if (!((DAC_FAST_VDAC8_CR1 & DAC_FAST_VDAC8_SRC_MASK) == DAC_FAST_VDAC8_SRC_UDB))
    {
        if((DAC_FAST_VDAC8_Strobe & DAC_FAST_VDAC8_STRB_MASK) == DAC_FAST_VDAC8_STRB_EN)
        {
            DAC_FAST_VDAC8_Strobe &= (uint8)(~DAC_FAST_VDAC8_STRB_MASK);
            DAC_FAST_VDAC8_Data = DAC_FAST_VDAC8_backup.data_value;
            DAC_FAST_VDAC8_Strobe |= DAC_FAST_VDAC8_STRB_EN;
        }
        else
        {
            DAC_FAST_VDAC8_Data = DAC_FAST_VDAC8_backup.data_value;
        }
    }
}


/*******************************************************************************
* Function Name: DAC_FAST_VDAC8_Sleep
********************************************************************************
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
*  DAC_FAST_VDAC8_backup.enableState:  Is modified depending on the enable 
*  state  of the block before entering sleep mode.
*
*******************************************************************************/
void DAC_FAST_VDAC8_Sleep(void) 
{
    /* Save VDAC8's enable state */    
    if(DAC_FAST_VDAC8_ACT_PWR_EN == (DAC_FAST_VDAC8_PWRMGR & DAC_FAST_VDAC8_ACT_PWR_EN))
    {
        /* VDAC8 is enabled */
        DAC_FAST_VDAC8_backup.enableState = 1u;
    }
    else
    {
        /* VDAC8 is disabled */
        DAC_FAST_VDAC8_backup.enableState = 0u;
    }
    
    DAC_FAST_VDAC8_Stop();
    DAC_FAST_VDAC8_SaveConfig();
}


/*******************************************************************************
* Function Name: DAC_FAST_VDAC8_Wakeup
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
*  DAC_FAST_VDAC8_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void DAC_FAST_VDAC8_Wakeup(void) 
{
    DAC_FAST_VDAC8_RestoreConfig();
    
    if(DAC_FAST_VDAC8_backup.enableState == 1u)
    {
        /* Enable VDAC8's operation */
        DAC_FAST_VDAC8_Enable();

        /* Restore the data register */
        DAC_FAST_VDAC8_SetValue(DAC_FAST_VDAC8_Data);
    } /* Do nothing if VDAC8 was disabled before */    
}


/* [] END OF FILE */
