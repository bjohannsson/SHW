#ifndef SERIAL_H
#define SERIAL_H

/* ========================================
 *
 * SHW - Visible light Communication Controller
 * Bjarki Johannsson 2017
 * Open Source
 *
 *
 * ========================================
*/

#include <project.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>



#define UART_FTDI   1
#define UART_SER    0

/*-------------SERIAL USER COMMANDS---------------------------*/
#define SET_MOD_MODE_OOK        0x30 //0
#define SET_MOD_MODE_QAM4       0x31
#define TOGGLE_RX_SERIAL        0x32
#define GET_ADC_SAR_DATA        0x33
#define SET_PWM_CMP_DOWN        0x34
#define SET_PWM_CMP_UP          0x35
#define TOGGLE_LED_ON           0x36
#define SET_TX_CHANNEL_1        0x37
#define SET_TX_CHANNEL_2        0x38
#define SET_TX_CHANNEL_3        0x39 //9
#define GET_ID                  0x41 //A
#define SET_PWM_CMP_HALF        0x42
#define SET_PWM_CMP_FULL        0x43
#define SET_PWM_CMP_DOWN5       0x44
#define SET_PWM_CMP_UP5         0x45 //E
#define SEND_ARP                0x47
#define DUMP_ROUTING_TABLE      0x49 //I
#define TX_CHECK_RSSI           0x4A
#define SERIAL_TEST             0x4B //K
#define SET_MOD_MODE_QAM8       0x4C  
#define SET_MOD_MODE_QAM16      0x4D //M
#define SET_CMP_VALUE           0x4E    
#define TX_PULSE                0x4F //O 
#define SET_ADC_SAR_RATE        0x50 //P
#define SET_RUN_MODE_PACKET     0x51 //Q
#define SET_RUN_MODE_CONTINUOUS 0x52 //R
#define SET_RUN_MODE_FREE       0x53
#define TOGGLE_FREE_MODE        0x54 //T  
#define SET_PWM_PER_63          0x55
#define SET_PWM_PER_127         0x56
#define SET_PWM_PER_255         0x57   
#define TOGGLE_VDAC             0x58    
#define TX_STEP                 0x59
#define SEND_48                 0x61
#define SEND_15                 0x62
#define SEND_82                 0x63
#define SET_TH                  0x64
#define SET_DEL                 0x65
#define SET_STEP                0x66
#define SET_PERIOD              0x67
#define TOGGLE_SEND15           0x68
#define SEND_TRIGGER			0x78 //x
#define GET_DATA				0x79
#define RX_ON					0x80
#define RX_OFF					0x81
	
#define INIT_TX					0x82

    
// Serial Msg Type
#define SER_TX_FLAG_ADC_DATA    0x01
#define SER_TX_FLAG_CAL_MEAN    0x02
//#define SER_TX_FLAG_CAL_TH      0x03    
#define SER_TX_TEST             0x04
#define SER_TX_CMP              0x05
#define SER_TX_TEST8            0x06
#define SER_TX_TEST16           0x07
#define SER_TX_TH8              0x08
#define SER_TX_TH16				0x03
#define SER_TX_DATA_START		0x10
#define SER_TX_DATA_END			0x11
#define SER_TX_DEMOD			0x12
#define SER_TX_DEMOD_VAL		0x13
#define SER_TX_DEMOD_TH			0x14
#define SER_TX_DEMOD_ERR		0x15
#define SER_TX_DEMOD_CORR		0x16
#define	SER_TX_SYM_TX			0x99 //check

#define serMaskData         0x00
#define serMaskCtrl         0x80

#define serMask8bit         0x00
#define serMask16bit        0x40

#define serMaskSignFlip		0x10
#define serMaskUnsigned		0x00

#define serMaskSingle       0x00
#define serMaskArray        0x20

#define BUFFER_LEN  64u


// Function prototypes
void INIT_SERIAL();
void serialResolve(uint8* b);
void serialRead();
void serialSend8bit(uint8* data, uint16 length, uint8 msgID);
void serialSend16bit(uint16* data, uint16 length, uint8 msgID);
void serial_send_s16bit(volatile int16* data, uint16 length, uint8 msgID);


CY_ISR(ISR_I2C_s);
void send_i2c(uint8 data);

uint8 bufferUart[64];

bool FLAG_SER_EVENT;
bool FLAG_SER_TX_INIT;


int i;

uint8 levels_48[16];
uint8 levels_15[4];
uint8 levels_82[4];

uint8 serialTest[2];
uint8 test8;
uint16 test16;

uint8 buffer_uart[BUFFER_LEN];

uint8 del;
uint8 pre;

uint8 uart_type;

uint8 stepSize;

bool send15Cont;

uint16 signalMean;
uint32 sum;

uint8 i2cStart;
uint8 i2cClk;
uint8 i2cSda;
uint8 c;
uint8 i2cBuf[27];

uint8 i2cAddr;
uint8 i2cInstr;
uint8 i2cData;
uint8 i2cRun;

uint8 i2cWord[27];


#endif /* SERIAL_H */
/* [] END OF FILE */
