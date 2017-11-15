/*******************************************************************************
* File Name: ISR_SYMB.h
* Version 1.70
*
*  Description:
*   Provides the function definitions for the Interrupt Controller.
*
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/
#if !defined(CY_ISR_ISR_SYMB_H)
#define CY_ISR_ISR_SYMB_H


#include <cytypes.h>
#include <cyfitter.h>

/* Interrupt Controller API. */
void ISR_SYMB_Start(void);
void ISR_SYMB_StartEx(cyisraddress address);
void ISR_SYMB_Stop(void);

CY_ISR_PROTO(ISR_SYMB_Interrupt);

void ISR_SYMB_SetVector(cyisraddress address);
cyisraddress ISR_SYMB_GetVector(void);

void ISR_SYMB_SetPriority(uint8 priority);
uint8 ISR_SYMB_GetPriority(void);

void ISR_SYMB_Enable(void);
uint8 ISR_SYMB_GetState(void);
void ISR_SYMB_Disable(void);

void ISR_SYMB_SetPending(void);
void ISR_SYMB_ClearPending(void);


/* Interrupt Controller Constants */

/* Address of the INTC.VECT[x] register that contains the Address of the ISR_SYMB ISR. */
#define ISR_SYMB_INTC_VECTOR            ((reg32 *) ISR_SYMB__INTC_VECT)

/* Address of the ISR_SYMB ISR priority. */
#define ISR_SYMB_INTC_PRIOR             ((reg8 *) ISR_SYMB__INTC_PRIOR_REG)

/* Priority of the ISR_SYMB interrupt. */
#define ISR_SYMB_INTC_PRIOR_NUMBER      ISR_SYMB__INTC_PRIOR_NUM

/* Address of the INTC.SET_EN[x] byte to bit enable ISR_SYMB interrupt. */
#define ISR_SYMB_INTC_SET_EN            ((reg32 *) ISR_SYMB__INTC_SET_EN_REG)

/* Address of the INTC.CLR_EN[x] register to bit clear the ISR_SYMB interrupt. */
#define ISR_SYMB_INTC_CLR_EN            ((reg32 *) ISR_SYMB__INTC_CLR_EN_REG)

/* Address of the INTC.SET_PD[x] register to set the ISR_SYMB interrupt state to pending. */
#define ISR_SYMB_INTC_SET_PD            ((reg32 *) ISR_SYMB__INTC_SET_PD_REG)

/* Address of the INTC.CLR_PD[x] register to clear the ISR_SYMB interrupt. */
#define ISR_SYMB_INTC_CLR_PD            ((reg32 *) ISR_SYMB__INTC_CLR_PD_REG)


#endif /* CY_ISR_ISR_SYMB_H */


/* [] END OF FILE */
