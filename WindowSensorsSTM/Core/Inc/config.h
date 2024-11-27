#include <stdbool.h>
#include "board.h"
#include "radio.h"
#include "stm32u5xx_hal.h"

extern int sensor1Id;
extern int sensor2Id;
extern int sensor3Id;
extern int stationId;

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

