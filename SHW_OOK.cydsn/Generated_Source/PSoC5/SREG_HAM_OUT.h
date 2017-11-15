/*******************************************************************************
* File Name: SREG_HAM_OUT.h  
* Version 1.90
*
* Description:
*  This file containts Status Register function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_STATUS_REG_SREG_HAM_OUT_H) /* CY_STATUS_REG_SREG_HAM_OUT_H */
#define CY_STATUS_REG_SREG_HAM_OUT_H

#include "cyfitter.h"

#if ((CYDEV_CHIP_FAMILY_USED == CYDEV_CHIP_FAMILY_PSOC3) || \
     (CYDEV_CHIP_FAMILY_USED == CYDEV_CHIP_FAMILY_PSOC4) || \
     (CYDEV_CHIP_FAMILY_USED == CYDEV_CHIP_FAMILY_PSOC5))
    #include "cytypes.h"
    #include "CyLib.h"
#else
    #include "syslib/cy_syslib.h"
#endif

    
/***************************************
*     Data Struct Definitions
***************************************/

/* Sleep Mode API Support */
typedef struct
{
    uint8 statusState;

} SREG_HAM_OUT_BACKUP_STRUCT;


/***************************************
*        Function Prototypes
***************************************/

uint8 SREG_HAM_OUT_Read(void) ;
void SREG_HAM_OUT_InterruptEnable(void) ;
void SREG_HAM_OUT_InterruptDisable(void) ;
void SREG_HAM_OUT_WriteMask(uint8 mask) ;
uint8 SREG_HAM_OUT_ReadMask(void) ;


/***************************************
*           API Constants
***************************************/

#define SREG_HAM_OUT_STATUS_INTR_ENBL    0x10u


/***************************************
*         Parameter Constants
***************************************/

/* Status Register Inputs */
#define SREG_HAM_OUT_INPUTS              8


/***************************************
*             Registers
***************************************/

/* Status Register */
#define SREG_HAM_OUT_Status             (* (reg8 *) SREG_HAM_OUT_sts_sts_reg__STATUS_REG )
#define SREG_HAM_OUT_Status_PTR         (  (reg8 *) SREG_HAM_OUT_sts_sts_reg__STATUS_REG )
#define SREG_HAM_OUT_Status_Mask        (* (reg8 *) SREG_HAM_OUT_sts_sts_reg__MASK_REG )
#define SREG_HAM_OUT_Status_Aux_Ctrl    (* (reg8 *) SREG_HAM_OUT_sts_sts_reg__STATUS_AUX_CTL_REG )

#endif /* End CY_STATUS_REG_SREG_HAM_OUT_H */


/* [] END OF FILE */
