/*******************************************************************************
* File Name: DAC_TH_SLOW_PM.c
* Version 2.10
*
* Description:
*  This file provides the power management source code to the API for the
*  DVDAC component.
*
*
********************************************************************************
* Copyright 2013, Cypress Semiconductor Corporation. All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "DAC_TH_SLOW.h"
#include "DAC_TH_SLOW_VDAC8.h"

static DAC_TH_SLOW_BACKUP_STRUCT  DAC_TH_SLOW_backup;


/*******************************************************************************
* Function Name: DAC_TH_SLOW_Sleep
********************************************************************************
*
* Summary:
*  This is the preferred API to prepare the component for sleep. The
*  DAC_TH_SLOW_Sleep() API saves the current component state. Then it
*  calls the DAC_TH_SLOW_Stop() function and calls
*  DAC_TH_SLOW_SaveConfig() to save the hardware configuration. Call the
*  DAC_TH_SLOW_Sleep() function before calling the CyPmSleep() or the
*  CyPmHibernate() function.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  None
*
*******************************************************************************/
void DAC_TH_SLOW_Sleep(void) 
{
    /* Save VDAC8's enable state */
    if(0u != (DAC_TH_SLOW_VDAC8_PWRMGR & DAC_TH_SLOW_VDAC8_ACT_PWR_EN))
    {
        DAC_TH_SLOW_backup.enableState = 1u;
    }
    else
    {
        DAC_TH_SLOW_backup.enableState = 0u;
    }

    DAC_TH_SLOW_Stop();
    DAC_TH_SLOW_SaveConfig();
}


/*******************************************************************************
* Function Name: DAC_TH_SLOW_Wakeup
********************************************************************************
*
* Summary:
*  This is the preferred API to restore the component to the state when
*  DAC_TH_SLOW_Sleep() was called. The DAC_TH_SLOW_Wakeup() function
*  calls the DAC_TH_SLOW_RestoreConfig() function to restore the
*  configuration. If the component was enabled before the
*  DAC_TH_SLOW_Sleep() function was called, the DVDAC_Wakeup() function
*  will also re-enable the component.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  None
*
*******************************************************************************/
void DAC_TH_SLOW_Wakeup(void) 
{
    DAC_TH_SLOW_RestoreConfig();

    if(DAC_TH_SLOW_backup.enableState == 1u)
    {
        DAC_TH_SLOW_Enable();
    }
}


/*******************************************************************************
* Function Name: DAC_TH_SLOW_SaveConfig
********************************************************************************
*
* Summary:
*  This function saves the component configuration and non-retention registers.
*  This function is called by the DAC_TH_SLOW_Sleep() function.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  None
*
*******************************************************************************/
void DAC_TH_SLOW_SaveConfig(void) 
{
    DAC_TH_SLOW_VDAC8_SaveConfig();
}


/*******************************************************************************
* Function Name: DAC_TH_SLOW_RestoreConfig
********************************************************************************
*
* Summary:
*  This function restores the component configuration and non-retention
*  registers. This function is called by the DAC_TH_SLOW_Wakeup() function.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  None
*
*******************************************************************************/
void DAC_TH_SLOW_RestoreConfig(void) 
{
    DAC_TH_SLOW_VDAC8_RestoreConfig();
}


/* [] END OF FILE */
