#include "message_handler.h"

void handleNewMessage()
{
    uint8_t*  decoded_message = dequeue(&message_queue);

    if (strlen((char *) decoded_message) != 5) {
        printf("Error: Input string must be exactly 21 characters long.\n");
    }

    char messageType[2];
    char stationId[3];
    char sensorId[3];
    char secret[16];


    messageType[0] = decoded_message[0];
    messageType[1] = '\0';

    stationId[0] = decoded_message[1];
    stationId[1] = decoded_message[2];
    stationId[2] = '\0';

    sensorId[0] = decoded_message[3];
    sensorId[1] = decoded_message[4];
    sensorId[2] = '\0';

    secret[0] = decoded_message[5];
    secret[1] = decoded_message[6];
    secret[2] = decoded_message[7];
    secret[3] = decoded_message[8];
    secret[4] = decoded_message[9];
    secret[5] = decoded_message[10];
    secret[6] = decoded_message[11];
    secret[7] = decoded_message[12];
    secret[8] = decoded_message[13];
    secret[9] = decoded_message[14];
    secret[10] = decoded_message[15];
    secret[11] = decoded_message[16];
    secret[12] = decoded_message[17];
    secret[13] = decoded_message[18];
    secret[14] = decoded_message[19];
    secret[15] = decoded_message[20];
    secret[16] = decoded_message[21];


    if (decodeMessage(atoi(sensorId), secret) == 0) return;

    if (messageType[0] == MESSAGE_TYPE_ACKNOWLEDGEMENT) {
    	handleAcknowledgementMessage(atoi(stationId), atoi(sensorId));
    }
    else if ((messageType[0] == MESSAGE_TYPE_REQUEST_UPDATE)) {
    	handleUpdateStatusMessage(atoi(stationId), atoi(sensorId));
    }

}

int decodeMessage(int sensorId, uint8_t* secret) {

	uint8_t decrypted_plaintext[16];
	size_t decrypted_len;
	cmox_cipher_retval_t retval;
	int number;

	if (sensorId == sensor1Id) {
		retval = cmox_cipher_decrypt(CMOX_AESFAST_CTR_DEC_ALGO,           /* Use AES CTR algorithm */
										secret, sizeof(secret),        /* Ciphertext to decrypt */
									   key1, sizeof(key1),                      /* AES key to use */
									   iv, sizeof(iv),                        /* Initialization vector */
									   decrypted_plaintext, &decrypted_plaintext);

		memcpy(&number, decrypted_plaintext, sizeof(number));

		if (number == messagecounter1)  {
			messagecounter1++;
			return 1;
		}

	}
	else if (sensorId == sensor2Id) {
		retval = cmox_cipher_decrypt(CMOX_AESFAST_CTR_DEC_ALGO,           /* Use AES CTR algorithm */
												secret, sizeof(secret),        /* Ciphertext to decrypt */
											   key2, sizeof(key1),                      /* AES key to use */
											   iv, sizeof(iv),                        /* Initialization vector */
											   decrypted_plaintext, &decrypted_plaintext);

		memcpy(&number, decrypted_plaintext, sizeof(number));


		if (number == messagecounter2)  {
			messagecounter2++;
			return 1;
		}
	}
	else if (sensorId == sensor3Id) {
		retval = cmox_cipher_decrypt(CMOX_AESFAST_CTR_DEC_ALGO,           /* Use AES CTR algorithm */
												secret, sizeof(secret),        /* Ciphertext to decrypt */
											   key3, sizeof(key1),                      /* AES key to use */
											   iv, sizeof(iv),                        /* Initialization vector */
											   decrypted_plaintext, &decrypted_plaintext);


		memcpy(&number, decrypted_plaintext, sizeof(number));

		if (number == messagecounter3)  {
			messagecounter3++;
			return 1;
		}
	}
	else {
		return -1;
	}
}






void handleAcknowledgementMessage(int stationId, int sensorId) {

	if (station1Id != stationId)
		return;

	if (sensorId == sensor1Id)
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



