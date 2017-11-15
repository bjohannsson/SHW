/*******************************************************************************
* File Name: CREG_TX_INIT.h  
* Version 1.80
*
* Description:
*  This file containts Control Register function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_CONTROL_REG_CREG_TX_INIT_H) /* CY_CONTROL_REG_CREG_TX_INIT_H */
#define CY_CONTROL_REG_CREG_TX_INIT_H

#include "cyfitter.h"

#if ((CYDEV_CHIP_FAMILY_USED == CYDEV_CHIP_FAMILY_PSOC3) || \
     (CYDEV_CHIP_FAMILY_USED == CYDEV_CHIP_FAMILY_PSOC4) || \
     (CYDEV_CHIP_FAMILY_USED == CYDEV_CHIP_FAMILY_PSOC5))
    #include "cytypes.h"
#else
    #include "syslib/cy_syslib.h"
#endif

    
/***************************************
*     Data Struct Definitions
***************************************/

/* Sleep Mode API Support */
typedef struct
{
    uint8 controlState;

} CREG_TX_INIT_BACKUP_STRUCT;


/***************************************
*         Function Prototypes 
***************************************/

void    CREG_TX_INIT_Write(uint8 control) ;
uint8   CREG_TX_INIT_Read(void) ;

void CREG_TX_INIT_SaveConfig(void) ;
void CREG_TX_INIT_RestoreConfig(void) ;
void CREG_TX_INIT_Sleep(void) ; 
void CREG_TX_INIT_Wakeup(void) ;


/***************************************
*            Registers        
***************************************/

/* Control Register */
#define CREG_TX_INIT_Control        (* (reg8 *) CREG_TX_INIT_Sync_ctrl_reg__CONTROL_REG )
#define CREG_TX_INIT_Control_PTR    (  (reg8 *) CREG_TX_INIT_Sync_ctrl_reg__CONTROL_REG )

#endif /* End CY_CONTROL_REG_CREG_TX_INIT_H */


/* [] END OF FILE */
