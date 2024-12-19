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


#include "board.h"
#include "radio.h"
#include "stm32u5xx_hal.h"

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


uint8_t* createCyphertext(int sensorId, uint8_t* plaintext, uint8_t* ciphertext) {

}

int send_window_status_update(int messageType, int stationId, int sensorId, int windowStatus)
{
	if (stationId >= 100 || sensorId >= 100)
			return 0;
	if (messageType != 0 && messageType != 3)
		return 0;


	Radio.Standby();
	char message[22];

	char messageTypeMessage[2];
	char stationIdMessage[3];
	char sensorIdMessage[3];
	char windowStatusMessage[2];
	uint8_t plaintextSecret[16];
	uint8_t cyphertext[16] = {0};
	uint8_t plaintext[17];
	char secret[16];

    snprintf(stationIdMessage, sizeof(stationIdMessage), "%02d", stationId);
    snprintf(sensorIdMessage, sizeof(sensorIdMessage), "%02d", sensorId);
    snprintf(windowStatusMessage, sizeof(windowStatusMessage), "%d", windowStatus);
    snprintf(messageTypeMessage, sizeof(messageTypeMessage), "%d", messageType);

    int messageNumber = getSequenceNumber(sensorId);
    if (messageNumber == -1) return;

    snprintf(plaintext, sizeof(plaintext), "%016d", messageNumber);
    plaintextSecret[0] = (uint8_t)windowStatusMessage[0];
    plaintextSecret[1] = plaintext[1];
    plaintextSecret[2] = plaintext[2];
    plaintextSecret[3] = plaintext[3];
    plaintextSecret[4] = plaintext[4];
    plaintextSecret[5] = plaintext[5];
    plaintextSecret[6] = plaintext[6];
    plaintextSecret[7] = plaintext[7];
    plaintextSecret[8] = plaintext[8];
    plaintextSecret[9] = plaintext[9];
    plaintextSecret[10] = plaintext[10];
    plaintextSecret[11] = plaintext[11];
    plaintextSecret[12] = plaintext[12];
    plaintextSecret[13] = plaintext[13];
    plaintextSecret[14] = plaintext[14];
    plaintextSecret[15] = plaintext[15];

/*
    cmox_cipher_retval_t retval;
    	size_t computed_size;
    	 if (sensorId == sensor1Id)
    	{
    		 retval = cmox_cipher_encrypt(CMOX_AES_CBC_ENC_ALGO,
    				 plaintextSecret, sizeof(plaintextSecret),
    									(uint8_t*)key1, sizeof(key1),
    									iv, sizeof(iv),
										cyphertext, computed_size);
    	}
    	else if (sensorId == sensor2Id)
    	{
    		retval = cmox_cipher_encrypt(CMOX_AES_CBC_ENC_ALGO,
   				 plaintextSecret, sizeof(plaintextSecret),
   									(uint8_t*)key2, sizeof(key2),
   									iv, sizeof(iv),
									cyphertext, computed_size);
    	}
    	else if (sensorId == sensor3Id)
    	{
    		retval = cmox_cipher_encrypt(CMOX_AES_CBC_ENC_ALGO,
   				 plaintextSecret, sizeof(plaintextSecret),
   									(uint8_t*)key3, sizeof(key3),
   									iv, sizeof(iv),
									cyphertext, computed_size);
    	}


    	if (retval != CMOX_CIPHER_SUCCESS) {
    	    printf("something went wrong");
    	}


*/

    message[0] = messageTypeMessage[0];
    message[1] = stationIdMessage[0];
    message[2] = stationIdMessage[1];
    message[3] = sensorIdMessage[0];
    message[4] = sensorIdMessage[1];
    message[5] = (char)plaintextSecret[0];
    message[6] = (char)plaintextSecret[1];
    message[7] = (char)plaintextSecret[2];
    message[8] = (char)plaintextSecret[3];
    message[9] = (char)plaintextSecret[4];
    message[10] = (char)plaintextSecret[5];
    message[11] = (char)plaintextSecret[6];
    message[12] = (char)plaintextSecret[7];
    message[13] = (char)plaintextSecret[8];
    message[14] = (char)plaintextSecret[9];
    message[15] = (char)plaintextSecret[10];
    message[16] = (char)plaintextSecret[11];
    message[17] = (char)plaintextSecret[12];
    message[18] = (char)plaintextSecret[13];
    message[19] = (char)plaintextSecret[14];
    message[20] = (char)plaintextSecret[15];
    message[21] = '\0';

    for (int i = 0; i < 5; ++i) {
    	Radio.Send( message, 22);
    	HAL_Delay(50);
    }

    Radio.Rx(0);
    return 1;
}


int getSequenceNumber(int sensorId) {

	int count = 0;
	 if (sensorId == sensor1Id)
	{
		 count = messagecounter1;
		 messagecounter1++;
	}
	else if (sensorId == sensor2Id)
	{
		count = messagecounter2;
		messagecounter2++;
	}
	else if (sensorId == sensor3Id)
	{
		count = messagecounter3;
		messagecounter3++;
	}
	else {
		return -1;
	}
	 return count;
}



void OnTxDone( void )
{
    State = TX;
    trx_events_cnt.txdone++;
}

void OnRxDone( uint8_t *payload, uint16_t size, int16_t rssi, int8_t snr )
{
	enqueue(&message_queue, payload);
    State = RX_DONE;
    trx_events_cnt.rxdone++;
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
