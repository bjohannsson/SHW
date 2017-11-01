#ifndef PACKETMAN_H
#define PACKETMAN_H

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
#include "dlm.h"
#include "dimmingcontrol.h"
#include <stdbool.h>
#include <stdint.h>
	

/* Defines for DMA_PAY */
#define DMA_PAY_BYTES_PER_BURST		1
#define DMA_PAY_REQUEST_PER_BURST	1
#define DMA_PAY_SRC_BASE (CYDEV_SRAM_BASE)
#define DMA_PAY_DST_BASE (CYDEV_PERIPH_BASE)
	
/* Variable declarations for DMA_PAY */
uint8 DMA_PAY_Chan;
uint8 DMA_PAY_TD[1];


#define PACKET_SIZE_4		1
#define PACKET_SIZE_100		2
#define PACKET_SIZE_400		3

typedef struct {
	uint8 hFields[4]; // SRC, DST, MOD, SIZE
	uint8 header[4]; 
	uint8 payload[400];
	bool inUse;
} Packet400;

typedef struct {
	uint8 hFields[4]; // SRC, DST, MOD, SIZE
	uint8 header[4]; 
	uint8 payload[100];
	bool inUse;
} Packet100;

typedef struct {
	uint8 hFields[4]; // SRC, DST, MOD, SIZE
	uint8 header[4];
	uint8 payload[4];
	bool inUse;
} Packet4;

void INIT_PACKET_MANAGER(void);
void setDMA(uint8* packet, uint16 length);
void makeHeader(uint8 p);

Packet4 packets4[5];
	

#endif /* PACKETMAN_H */
/* [] END OF FILE */
