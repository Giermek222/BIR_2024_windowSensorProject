#include "WindowSensorSystem.h"


void startSystem() {


	int window1Status = checkWindow1Status();
	int window2Status = checkWindow2Status();
	int window3Status = checkWindow3Status();


	initialiseSystem();
	printf("starting loop");

	while (1) {

		if (!isEmpty(&message_queue)) {
			handleNewMessage();
		}

		if (checkWindow1Status() != window1Status && isSensor1Registered)
		{
			window1Status = checkWindow1Status();
			send_window_status_update(MESSAGE_TYPE_SEND_UPDATE, station1Id, sensor1Id, checkWindow1Status());
	    }
		if (checkWindow2Status() != window2Status  && isSensor2Registered)
		{
			window2Status = checkWindow2Status();
			send_window_status_update(MESSAGE_TYPE_SEND_UPDATE, station1Id, sensor2Id, checkWindow2Status());
		}
		if (checkWindow3Status() != window3Status  && isSensor3Registered)
		{
			window3Status = checkWindow3Status();
			send_window_status_update(MESSAGE_TYPE_SEND_UPDATE, station1Id, sensor3Id, checkWindow3Status());
		}

		HAL_Delay(100);
	}
}


void initialiseSystem() {


	initRadioCommunication();
	initQueue(&message_queue);
	cmox_initialize(NULL);


	//register sensors to given radio stations
	send_window_status_update(MESSAGE_TYPE_REGISTER, station1Id, sensor1Id,  checkWindow1Status());
	send_window_status_update(MESSAGE_TYPE_REGISTER, station1Id, sensor2Id,  checkWindow2Status());
	send_window_status_update(MESSAGE_TYPE_REGISTER, station1Id, sensor3Id,  checkWindow3Status());

}




