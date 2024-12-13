#include <pointer_queue.h>
#include <stdbool.h>

#include "board.h"
#include "radio.h"
#include "stm32u5xx_hal.h"
#include "cmox_crypto.h"

extern int sensor1Id;
extern int sensor2Id;
extern int sensor3Id;
extern int station1Id;

extern int MESSAGE_TYPE_REGISTER;
extern int MESSAGE_TYPE_SEND_UPDATE;
extern char MESSAGE_TYPE_ACKNOWLEDGEMENT;
extern char MESSAGE_TYPE_REQUEST_UPDATE;

extern bool isSensor1Registered;
extern bool isSensor2Registered;
extern bool isSensor3Registered;

extern bool shouldUpdateSensor1;
extern bool shouldUpdateSensor2;
extern bool shouldUpdateSensor3;

extern char key1[16];
extern char key2[16] ;
extern char key3[16];

extern unsigned char iv[16];


extern int messagecounter1;
extern int messagecounter2;
extern int messagecounter3;

extern  cmox_cipher_handle_t  aes1;
extern  cmox_cipher_handle_t  aes2;
extern  cmox_cipher_handle_t  aes3;

extern PointerQueue message_queue;

typedef enum
{
    LOWPOWER,
    RX,
	RX_DONE,
    RX_TIMEOUT,
    RX_ERROR,
    TX,
    TX_TIMEOUT,
}States_t;

extern States_t State;

