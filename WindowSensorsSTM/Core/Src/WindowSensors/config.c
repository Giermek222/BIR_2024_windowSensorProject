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

bool isSensor1Registered = false;
bool isSensor2Registered = false;
bool isSensor3Registered = false;

bool shouldUpdateSensor1 = false;
bool shouldUpdateSensor2 = false;
bool shouldUpdateSensor3 = false;

PointerQueue message_queue;

