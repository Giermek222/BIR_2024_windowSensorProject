
#include <string.h>
#include "board.h"
#include <stdio.h>
#include "radio.h"
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include "stm32u5xx_hal.h"


void initRadioCommunication(void);
int send_window_status_update(int messageType, int stationId, int sensorId, int windowStatus);
void tx_loop(void);
void handleAcknowledgementMessage(int stationId, int sensorId);
void handleUpdateStatusMessage(int stationId, int sensorId);
int getSequenceNumber(int sensorId);
uint8_t* createCyphertext(int sensorId, uint8_t* plaintextSecret, uint8_t* ciphertext);
