#ifndef DIMMINGCONTROL_H
#define DIMMINGCONTROL_H
	
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
#include "txsubsystem.h"

void INIT_DIMMING_CONTROL(void);

/* Update the symbols used for transmitting messages */
void updateSymbols(void);

uint8 dimLevel;
	
#endif /* DIMMINGCONTROL_H */
/* [] END OF FILE */