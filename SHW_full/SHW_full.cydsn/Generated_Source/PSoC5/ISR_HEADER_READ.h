/*******************************************************************************
* File Name: ISR_HEADER_READ.h
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
#if !defined(CY_ISR_ISR_HEADER_READ_H)
#define CY_ISR_ISR_HEADER_READ_H


#include <cytypes.h>
#include <cyfitter.h>

/* Interrupt Controller API. */
void ISR_HEADER_READ_Start(void);
void ISR_HEADER_READ_StartEx(cyisraddress address);
void ISR_HEADER_READ_Stop(void);

CY_ISR_PROTO(ISR_HEADER_READ_Interrupt);

void ISR_HEADER_READ_SetVector(cyisraddress address);
cyisraddress ISR_HEADER_READ_GetVector(void);

void ISR_HEADER_READ_SetPriority(uint8 priority);
uint8 ISR_HEADER_READ_GetPriority(void);

void ISR_HEADER_READ_Enable(void);
uint8 ISR_HEADER_READ_GetState(void);
void ISR_HEADER_READ_Disable(void);

void ISR_HEADER_READ_SetPending(void);
void ISR_HEADER_READ_ClearPending(void);


/* Interrupt Controller Constants */

/* Address of the INTC.VECT[x] register that contains the Address of the ISR_HEADER_READ ISR. */
#define ISR_HEADER_READ_INTC_VECTOR            ((reg32 *) ISR_HEADER_READ__INTC_VECT)

/* Address of the ISR_HEADER_READ ISR priority. */
#define ISR_HEADER_READ_INTC_PRIOR             ((reg8 *) ISR_HEADER_READ__INTC_PRIOR_REG)

/* Priority of the ISR_HEADER_READ interrupt. */
#define ISR_HEADER_READ_INTC_PRIOR_NUMBER      ISR_HEADER_READ__INTC_PRIOR_NUM

/* Address of the INTC.SET_EN[x] byte to bit enable ISR_HEADER_READ interrupt. */
#define ISR_HEADER_READ_INTC_SET_EN            ((reg32 *) ISR_HEADER_READ__INTC_SET_EN_REG)

/* Address of the INTC.CLR_EN[x] register to bit clear the ISR_HEADER_READ interrupt. */
#define ISR_HEADER_READ_INTC_CLR_EN            ((reg32 *) ISR_HEADER_READ__INTC_CLR_EN_REG)

/* Address of the INTC.SET_PD[x] register to set the ISR_HEADER_READ interrupt state to pending. */
#define ISR_HEADER_READ_INTC_SET_PD            ((reg32 *) ISR_HEADER_READ__INTC_SET_PD_REG)

/* Address of the INTC.CLR_PD[x] register to clear the ISR_HEADER_READ interrupt. */
#define ISR_HEADER_READ_INTC_CLR_PD            ((reg32 *) ISR_HEADER_READ__INTC_CLR_PD_REG)


#endif /* CY_ISR_ISR_HEADER_READ_H */


/* [] END OF FILE */
