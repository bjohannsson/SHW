/* ========================================
 *
 * SHW - Visible light Communication Controller
 * Bjarki Johannsson 2017
 * Open Source
 *
 *
 * ========================================
*/

#include "dlm.h"

void INIT_DLM() {
    int i, j;
//    for (i=0; i<3; i++) {
//        for (j=0; j<3; j++) {
//            routingTable[i].links[j].node = 0;
//            routingTable[i].links[j].noise = 0;
//            routingTable[i].links[j].mod_type_allowed = 0;
//        }
//    }
    CyGetUniqueId(&deviceID[0]);
    set_address();
}   

void send_device_id() {
    uint8 id[8];
    deviceID[0] = 9;
    id[0] = (deviceID[0] >> 24) & 0xFF;
    id[1] = (deviceID[0] >> 16) & 0xFF;
    id[2] = (deviceID[0] >> 8) & 0xFF;
    id[3] = deviceID[0] & 0xFF;
    id[4] = ((deviceID[1]) >> 24) & 0xFF;
    id[5] = ((deviceID[1]) >> 16) & 0xFF;
    id[6] = ((deviceID[1]) >> 8) & 0xFF;
    id[7] = (deviceID[1]) & 0xFF;
    
    while(USBUART_1_CDCIsReady() == 0u);
    USBUART_1_PutString("ID:");       /* Send data back to PC */
    while(USBUART_1_CDCIsReady() == 0u);
    USBUART_1_PutData(&id[0], 8);
    while(USBUART_1_CDCIsReady() == 0u);
    USBUART_1_PutData(&deviceAddress, 1);
}
    
void set_address() {
    if ( (deviceID[1] & 0xFF) == 12 ) {
        deviceAddress = NODE_ID_1;
    }
    else if ( (deviceID[1] & 0xFF) == 29 ) {
        deviceAddress = NODE_ID_2;
    }
    else if ( (deviceID[1] & 0xFF) == 13 ) {
        deviceAddress = NODE_ID_3;
    }
}

//void router_send_arp() {
//    uint8 msg[8];
//    msg[0] = 0x21;
//    uint8 i;
//    for (i=1; i<8; i++) {
//        msg[i] = 0x50;
//    }
//    send_packet(msg, deviceAddress, 9, 8, 5, MSG_FLAG_NO_FLAG);
//}

//void router_send_arp_reply(uint8 dst) {
//    uint8 msg[8];
//    msg[0] = 0x25;
//    uint8 i;
//    for (i=1; i<8; i++) {
//        msg[i] = 0x51;
//    }
//    send_packet(msg, deviceAddress, dst, 8, 5, MSG_FLAG_NO_FLAG);
//}
