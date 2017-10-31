#if !defined(PACKETMAN_H)
#define PACKETMAN_H

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
#include "project.h"
#include <stdbool.h>
#include <stdint.h>

typedef struct {
	uint8 src;
	uint8 dst;
	uint16 length;
	uint8 payload[4];
	bool inUse;
} Packet4;

void INIT_PACKET_MANAGER(void);
void setDMA(uint8* packet, uint16 length);

Packet4 packets4[5];
	

#endif /* PACKETMAN_H */
/* [] END OF FILE */
