#ifndef MAIN_H
#define MAIN_H
	
/* ========================================
 *
 * SHW - Visible light Communication Controller
 * Bjarki Johannsson 2017
 * Open Source
 *
 *
 * ========================================
*/
	
#include "project.h"
#include "serial.h"
#include "dlm.h"
#include "packetman.h"
#include "dimmingcontrol.h"
#include "rxsubsystem.h"
#include "txsubsystem.h"



/* Control register for utils */
#define CREG_DEBUG_LED	0x01
#define CREG_I2C_SCL	0x02
#define CREG_I2C_SDA	0x04
#define CREG_INIT_TX	0x10

int main(void);
void INIT_SYSTEM(void);
	
/* Hamming matrices 
Syndrome decoding method is used.

Generator matrix: (codewords are hard-coded into look-up table LUT_HAM 
uint8_t G[4][7] = {
	{1, 0, 0, 0, 1, 1, 1},
	{0, 1, 0, 0, 1, 1, 0},
	{0, 0, 1, 0, 1, 0, 1},
	{0, 0, 0, 1, 0, 1, 1}
};
*/
uint8 H[3][7] = {
	{1, 1, 1, 0, 1, 0, 0},
	{1, 1, 0, 1, 0, 1, 0},
	{1, 0, 1, 1, 0, 0, 1}
};

uint8 colValH[7] = {
	7, 6, 5, 3, 4, 2, 1
};

	
uint8 sh_test;
uint8 sh_load;
uint8 sh_fifo;
		
	
#endif /* MAIN_H */
/* [] END OF FILE */