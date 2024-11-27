/*
 / _____)             _              | |
( (____  _____ ____ _| |_ _____  ____| |__
 \____ \| ___ |    (_   _) ___ |/ ___)  _ \
 _____) ) ____| | | || |_| ____( (___| | | |
(______/|_____)_|_|_| \__)_____)\____)_| |_|
    (C)2013 Semtech

Description: Ping-Pong implementation

License: Revised BSD License, see LICENSE.TXT file include in the project

Maintainer: Miguel Luis and Gregory Cristian
*/
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "board.h"
#include "radio.h"
#include "stm32u5xx_hal.h"

#include "cryptography_module.h"
#include "gpio_control.h"
#include "config.h"

#define RF_FREQUENCY                                868000000 // Hz
#define TX_OUTPUT_POWER                             0         // dBm

//Always FSK
#define FSK_FDEV                                    25e3      // Hz
#define FSK_DATARATE                                50e3      // bps
#define FSK_BANDWIDTH                               50e3      // Hz
#define FSK_AFC_BANDWIDTH                           83.333e3  // Hz
#define FSK_PREAMBLE_LENGTH                         5         // Same for Tx and Rx
#define FSK_FIX_LENGTH_PAYLOAD_ON                   false





#define RX_TIMEOUT_VALUE                            1000
#define BUFFER_SIZE                                 13



volatile int8_t RssiValue = 0;
volatile int8_t SnrValue = 0;


uint16_t BufferSize = BUFFER_SIZE;
uint8_t Buffer[BUFFER_SIZE];

typedef struct {
	int rxdone;
	int rxtimeout;
	int rxerror;
	int txdone;
	int txtimeout;
} trx_events_cnt_t;

trx_events_cnt_t trx_events_cnt;

int rx_cnt = 0;
int txdone_cnt = 0;


/*!
 * Radio events function pointer
 */
static RadioEvents_t RadioEvents;

/*!
 * \brief Function to be executed on Radio Tx Done event
 */
void OnTxDone( void );

/*!
 * \brief Function to be executed on Radio Rx Done event
 */
void OnRxDone( uint8_t *payload, uint16_t size, int16_t rssi, int8_t snr );

/*!
 * \brief Function executed on Radio Tx Timeout event
 */
void OnTxTimeout( void );

/*!
 * \brief Function executed on Radio Rx Timeout event
 */
void OnRxTimeout( void );

/*!
 * \brief Function executed on Radio Rx Error event
 */
void OnRxError( void );




/**
 * Main application entry point.
 */
void initRadioCommunication( void )
{
    // Target board initialization
    BoardInitMcu( );
    BoardInitPeriph( );

    // Radio initialization
    RadioEvents.TxDone = OnTxDone;
    RadioEvents.RxDone = OnRxDone;
    RadioEvents.TxTimeout = OnTxTimeout;
    RadioEvents.RxTimeout = OnRxTimeout;
    RadioEvents.RxError = OnRxError;

    Radio.Init( &RadioEvents );

    Radio.SetChannel( RF_FREQUENCY );

    Radio.SetTxConfig(  MODEM_FSK,						/* Radio modem to be used [0: FSK, 1: LoRa] */
    					TX_OUTPUT_POWER,				/* Sets the output power [dBm] */
						FSK_FDEV,						/* Sets the frequency deviation (FSK only) [Hz] */
						0,								/* Sets the bandwidth (LoRa only); 0 for FSK */
                        FSK_DATARATE, 					/* Sets the Datarate. FSK: 600..300000 bits/s */
						0,								/* Sets the coding rate (LoRa only) FSK: N/A ( set to 0 ) */
                        FSK_PREAMBLE_LENGTH,			/* Sets the preamble length. FSK: Number of bytes */
						FSK_FIX_LENGTH_PAYLOAD_ON,		/* Fixed length packets [0: variable, 1: fixed] */
						true,							/* Enables disables the CRC [0: OFF, 1: ON] */
						0,								/* Enables disables the intra-packet frequency hopping. FSK: N/A ( set to 0 ) */
						0,								/* Number of symbols bewteen each hop. FSK: N/A ( set to 0 ) */
						0,								/* Inverts IQ signals (LoRa only). FSK: N/A ( set to 0 ) */
						3000							/* Transmission timeout [ms] */
	);

    Radio.SetRxConfig(  MODEM_FSK,						/* Radio modem to be used [0: FSK, 1: LoRa] */
    					FSK_BANDWIDTH,					/* Sets the bandwidth. FSK: >= 2600 and <= 250000 Hz. (CAUTION: This is "single side bandwidth") */
						FSK_DATARATE,					/* Sets the Datarate. FSK: 600..300000 bits/s */
						0,								/* Sets the coding rate (LoRa only) FSK: N/A ( set to 0 ) */
						FSK_AFC_BANDWIDTH,				/* Sets the AFC Bandwidth (FSK only). FSK: >= 2600 and <= 250000 Hz */
						FSK_PREAMBLE_LENGTH,			/* Sets the Preamble length. FSK: Number of bytes */
						0,								/* Sets the RxSingle timeout value (LoRa only). FSK: N/A ( set to 0 ) */
						FSK_FIX_LENGTH_PAYLOAD_ON,		/* Fixed length packets [0: variable, 1: fixed] */
						0,								/* Sets payload length when fixed lenght is used. */
						true,							/* Enables/Disables the CRC [0: OFF, 1: ON] */
                        0,								/* Enables disables the intra-packet frequency hopping. FSK: N/A ( set to 0 ) */
						0,								/* Number of symbols bewteen each hop. FSK: N/A ( set to 0 ) */
						false,							/* Inverts IQ signals (LoRa only). FSK: N/A ( set to 0 ) */
						true							/* Sets the reception in continuous mode. [false: single mode, true: continuous mode] */
	);




}

int send_window_status_update(int messageType, int stationId, int sensorId, int windowStatus)
{
	if (stationId >= 100 || sensorId >= 100)
			return 0;
	if (messageType != 0 && messageType != 3)
		return 0;

	char message[7];

	char messageTypeMessage[2];
	char stationIdMessage[3];
	char sensorIdMessage[3];
	char windowStatusMessage[2];


    snprintf(stationIdMessage, sizeof(stationIdMessage), "%02d", stationId);
    snprintf(sensorIdMessage, sizeof(sensorIdMessage), "%02d", sensorId);
    snprintf(windowStatusMessage, sizeof(windowStatusMessage), "%d", windowStatus);
    snprintf(messageTypeMessage, sizeof(messageTypeMessage), "%d", messageType);

    message[0] = messageTypeMessage[0];
    message[1] = stationIdMessage[0];
    message[2] = stationIdMessage[1];
    message[3] = sensorIdMessage[0];
    message[4] = sensorIdMessage[1];
    message[5] = windowStatusMessage[0];
    message[6] = windowStatusMessage[1];

    char* encoded_message = encode_message(message);

    Radio.Send( encoded_message, 7 );
    return 1;

}



void OnTxDone( void )
{
    State = TX;
    trx_events_cnt.txdone++;
}

void OnRxDone( uint8_t *payload, uint16_t size, int16_t rssi, int8_t snr )
{
    uint8_t*  decoded_message = decode_message(payload);

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


    State = RX_DONE;
    trx_events_cnt.rxdone++;
}

void handleAcknowledgementMessage(int stationId, int sensorId) {

	if (sensorId == sensor1Id)
		isSensor1Registered = true;
	else if (sensorId == sensor2Id)
		isSensor1Registered = true;
	else if (sensorId == sensor3Id)
		isSensor1Registered = true;
	else
		return;
}

void handleUpdateStatusMessage(int stationId, int sensorId) {

	if (sensorId == sensor1Id)
		shouldUpdateSensor1 = true;
	else if (sensorId == sensor2Id)
		shouldUpdateSensor2 = true;
	else if (sensorId == sensor3Id)
		shouldUpdateSensor3 = true;
	else
		return;
}

void OnTxTimeout( void )
{
    Radio.Sleep( );
    State = TX_TIMEOUT;
    trx_events_cnt.txtimeout++;
}

void OnRxTimeout( void )
{
    State = RX_TIMEOUT;
    trx_events_cnt.rxtimeout++;
}

void OnRxError( void )
{
    State = RX_ERROR;
    trx_events_cnt.rxerror++;
    Radio.Rx(0);
}
