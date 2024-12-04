#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "board.h"
#include "radio.h"
#include "stm32u5xx_hal.h"

#include "cryptography_module.h"
#include "gpio_control.h"
#include "radioUtils.h"
#include "config.h"

void handleNewMessage();
void handleAcknowledgementMessage(int stationId, int sensorId);
void handleUpdateStatusMessage(int stationId, int sensorId);
