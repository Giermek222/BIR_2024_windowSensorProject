#include "message_handler.h"


void handleNewMessage()
{
	uint8_t* dequeuedItem = dequeue(&message_queue);
    uint8_t*  decoded_message = decode_message(dequeuedItem);

    if (strlen((char *) decoded_message) != 5) {
        printf("Error: Input string must be exactly 5 characters long.\n");
    }

    char messageType[2];
    char stationId[3];
    char sensorId[3];


    messageType[0] = decoded_message[0];
    messageType[1] = '\0';

    stationId[0] = decoded_message[1];
    stationId[1] = decoded_message[2];
    stationId[2] = '\0';

    sensorId[0] = decoded_message[3];
    sensorId[1] = decoded_message[4];
    sensorId[2] = '\0';

    if (messageType[0] == MESSAGE_TYPE_ACKNOWLEDGEMENT) {
    	handleAcknowledgementMessage(atoi(stationId), atoi(sensorId));
    }
    else if ((messageType[0] == MESSAGE_TYPE_REQUEST_UPDATE)) {
    	handleUpdateStatusMessage(atoi(stationId), atoi(sensorId));
    }

}

void handleAcknowledgementMessage(int stationId, int sensorId) {

	if (station1Id != stationId)
		return;

	else if (sensorId == sensor1Id)
		isSensor1Registered = true;
	else if (sensorId == sensor2Id)
		isSensor2Registered = true;
	else if (sensorId == sensor3Id)
		isSensor3Registered = true;

	return;
}

void handleUpdateStatusMessage(int stationId, int sensorId) {

	if (station1Id != stationId)
		return;

	if (sensorId == sensor1Id && isSensor1Registered)
	{
		send_window_status_update(MESSAGE_TYPE_SEND_UPDATE, stationId, sensor1Id, checkWindow1Status());

    }
	if (sensorId == sensor2Id && isSensor2Registered)
	{
		send_window_status_update(MESSAGE_TYPE_SEND_UPDATE, stationId, sensor2Id, checkWindow2Status());
    }
	if (sensorId == sensor3Id  && isSensor3Registered)
	{
		send_window_status_update(MESSAGE_TYPE_SEND_UPDATE, stationId, sensor3Id, checkWindow3Status());
    }

	HAL_Delay(300);
	Radio.Rx(0);
}



