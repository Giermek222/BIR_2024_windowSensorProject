#include "gpio_control.h"
#include "WindowSensorSystem.h"
#include "radioUtils.h"
#include <stdbool.h>
#include "config.h"

#include "stm32u5xx_hal.h"


void startSystem() {


	int window1Status = checkWindow1Status();
	int window2Status = checkWindow2Status();
	int window3Status = checkWindow3Status();

	initialiseSystem();
	Radio.Rx(0);

	while (1) {

		if (checkWindow1Status() != window1Status && isSensor1Registered)
		{
			window1Status = checkWindow1Status();
			send_window_status_update(MESSAGE_TYPE_SEND_UPDATE, stationId, sensor1Id, checkWindow1Status());
			HAL_Delay(300);
			Radio.Rx(0);
	    }
		if (checkWindow2Status() != window2Status  && isSensor2Registered)
		{
			window2Status = checkWindow2Status();
			send_window_status_update(MESSAGE_TYPE_SEND_UPDATE, stationId, sensor2Id, checkWindow2Status());
			HAL_Delay(300);
			Radio.Rx(0);
	    }
		if (checkWindow3Status() != window3Status  && isSensor3Registered)
		{
			window3Status = checkWindow3Status();
			send_window_status_update(MESSAGE_TYPE_SEND_UPDATE, stationId, sensor3Id, checkWindow3Status());
			HAL_Delay(300);
			Radio.Rx(0);
	    }

		checkForUpdateRequests();

		if (State == RX_TIMEOUT)
		{

			State = RX;
		}
		HAL_Delay(100);
	}
}

void checkForUpdateRequests() {

	if (shouldUpdateSensor1 && isSensor1Registered)
	{
		send_window_status_update(MESSAGE_TYPE_SEND_UPDATE, stationId, sensor1Id, checkWindow1Status());
		HAL_Delay(300);
		Radio.Rx(0);
    }
	if (shouldUpdateSensor2 && isSensor2Registered)
	{
		send_window_status_update(MESSAGE_TYPE_SEND_UPDATE, stationId, sensor2Id, checkWindow2Status());
		HAL_Delay(300);
		Radio.Rx(0);
    }
	if (shouldUpdateSensor3  && isSensor3Registered)
	{
		send_window_status_update(MESSAGE_TYPE_SEND_UPDATE, stationId, sensor3Id, checkWindow3Status());
		HAL_Delay(300);
		Radio.Rx(0);
    }
}

void initialiseSystem() {


	initRadioCommunication();

	//register sensors to given radio stations
	send_window_status_update(MESSAGE_TYPE_REGISTER, stationId, sensor1Id,  checkWindow1Status());
	HAL_Delay(200);
	send_window_status_update(MESSAGE_TYPE_REGISTER, stationId, sensor2Id,  checkWindow2Status());
	HAL_Delay(200);
	send_window_status_update(MESSAGE_TYPE_REGISTER, stationId, sensor3Id,  checkWindow3Status());
	HAL_Delay(200);

}
