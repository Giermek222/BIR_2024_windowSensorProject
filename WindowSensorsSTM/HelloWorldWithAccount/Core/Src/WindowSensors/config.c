#include <config.h>

States_t State = LOWPOWER;

int sensor1Id = 1;
int sensor2Id = 2;
int sensor3Id = 3;
int station1Id = 10;

int MESSAGE_TYPE_REGISTER = 0;
int MESSAGE_TYPE_SEND_UPDATE = 3;
char MESSAGE_TYPE_ACKNOWLEDGEMENT = '1';
char MESSAGE_TYPE_REQUEST_UPDATE = '2';

bool isSensor1Registered = true;
bool isSensor2Registered = true;
bool isSensor3Registered = true;

bool shouldUpdateSensor1 = false;
bool shouldUpdateSensor2 = false;
bool shouldUpdateSensor3 = false;

char key1[16]  = "LubieRadioMocno!";
char key2[16]  = "BIRJestWPytkeBro";
char key3[16]  = "FKSPanyLORAToDno";

unsigned char iv[16] = {0};

int messagecounter1 = 0;
int messagecounter2 = 0;
int messagecounter3 = 0;


cmox_cipher_handle_t  aes1;
cmox_cipher_handle_t  aes2;
cmox_cipher_handle_t  aes3;

PointerQueue message_queue;

