/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/

#include "dimmingcontrol.h"


void INIT_DIMMING_CONTROL(void) 
{
	dimLevel = 60;
    PWM_LED_Start();
	PWM_LED_WriteCompare(20);
	CyDelay(500);
	PWM_LED_WriteCompare(dimLevel);
	
	updateSymbols();

}

void updateSymbols()
{
	uint8 hi, lo, modRange;
	
	// Set modulation bounds
	if (dimLevel <= 59) {
		lo = 4;
		hi = dimLevel + (dimLevel-lo);
	}
	else {
		hi = 115;
		lo = dimLevel - (hi-dimLevel);
	}
	
	modRange = hi - lo;
	
	
	// Set Symbols
	int i;

	uint8 step = modRange;

	m2[0] = dimLevel - step/2;
	m2[1] = dimLevel + step/2;

	
	step = modRange / 3;
	uint8 base = dimLevel - (step*1.5);
	for (i=0; i<4; i++) {
		
		m4[i] = base + (i*step);
	}
	
	step = modRange / 7;
	base = dimLevel - (step*3.5);
	for (i=0; i<8; i++) {
		
		m8[i] = base + (i*step);
	}

	step = modRange / 15;
	base = dimLevel - (step*7.5);
	for (i=0; i<16; i++) {
		
		m16[i] = base + (i*step);
		
	}
	
	step = modRange / 31;
	base = dimLevel - (step*15.5);
	for (i=0; i<32; i++) {
		
		m32[i] = base + (i*step);
	}
	
	
	/* Set mod level M and lMask */
	if (dimLevel <= 6) {
		
		modLevel = M2; // <=5%
		lMask = 0x01;
	}
	else if (dimLevel <= 12) {
		
		modLevel = M4; // 5-10%
		lMask = 0x03;
	}
	else if (dimLevel <= 36) {
		
		modLevel = M8; // 10-30%
		lMask = 0x07;
	}
	else if (dimLevel <= 82) {
		
		modLevel = M16; // 30-70%
		lMask = 0x0F;
	}
	else if (dimLevel <= 106) {
		
		modLevel = M8; // 70-90%
		lMask = 0x07;
	}
	else if (dimLevel <= 112) {
		
		modLevel = M4; // 90-95%
		lMask = 0x03;
	}
	else {
		
		modLevel = M2; // >95%
		lMask = 0x01;
	}
	
	CREG_L_Write(modLevel);
//	modLevel = M4;
//	CREG_M_COUNT_Write(modLevel);
	
	

}
/* [] END OF FILE */