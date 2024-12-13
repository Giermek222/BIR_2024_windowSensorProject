#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "board.h"
#include "radio.h"
#include "stm32u5xx_hal.h"

#include "gpio_control.h"
#include "radioUtils.h"
#include "config.h"

void handleNewMessage();
int decodeMessage(int sensorId, uint8_t* secret);
void handleAcknowledgementMessage(int stationId, int sensorId);
void handleUpdateStatusMessage(int stationId, int sensorId);

