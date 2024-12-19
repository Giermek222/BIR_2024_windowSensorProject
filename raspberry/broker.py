from radio_handle import *
import threading
import time
import random
from crypto import *
import base64

RADIO_MODE = RadioMode.FSK # Set the radio modulation: RadioMode.LORA or RadioMode.FSK
MESSAGE_TYPE_REGISTER = '0'
MESSAGE_TYPE_ACKNOWLEDGEMENT = '1'
MESSAGE_TYPE_REQUEST_UPDATE = '2'
MESSAGE_TYPE_SEND_UPDATE = '3'

allowed_devices = ['01','02','03']
devices = []
this_gateway_id = '10'
response_events = {}

def receive_data(data, rssi=None, index=None):

    #print(f"Received data: {data}")
    if len(data) != 22 or data[1:3] != this_gateway_id:
        return

    message_type = data[:1]
    node_id = data[3:5]
    secret = data[5:21]

    if message_type == MESSAGE_TYPE_SEND_UPDATE and node_id in devices:
        verified, window = decryptSecret(secret, node_id)
        if verified == False: return
        if window == 1:
            window_state = 'otwarte'
        elif window == 0:
            window_state = 'zamknięte'
        print(f"o:[ID: {node_id}][RSSI: {rssi}] Odebrano wiadomość, okno jest " + window_state)
        response_events[node_id].set()

    if message_type == MESSAGE_TYPE_REGISTER and node_id not in devices and node_id in allowed_devices: #Pierwsza rejestracja (pytanie: gdy będzie kryptografia, to czy tą wiadomością będzie mogło urządzenie się rejestrować ponownie? czy tylko z zapisanym kluczem)

        verified, window = decryptSecret(secret, node_id)
        if verified == False: return

        devices.append(node_id)
        print(f"o:[ID: {node_id}][RSSI: {rssi}] Zarejestrowano nowy czujnik.")
        response_events[node_id] = threading.Event()  # Inicjalizacja Event dla nowego node_id
        message_thread = threading.Thread(target=cycle_executor, args=(node_id,))
        message_thread.start()


def cycle_executor(id):
    failures = 0
    secret = generateSecret(id)

    msg_to_send = MESSAGE_TYPE_ACKNOWLEDGEMENT + this_gateway_id + id + secret


    for _ in range(2):
        sleep_time = 2 + random.randint(3,8)
        time.sleep(sleep_time)
        radio_handler.send(msg_to_send)

    while True:
        wait_time = 30 + random.randint(1, 5)
        time.sleep(wait_time)
        response_events[id].clear() #Rozpoczynamy oczekiwanie na wiadomość
        secret = generateSecret(id)
        request = MESSAGE_TYPE_REQUEST_UPDATE + this_gateway_id + id + secret
        radio_handler.send(request)
        print(f"r:[ID: {id}] Wysyłanie żądania.")

        retries = 0
        while retries < 3:
            time_out = 3 + random.randint(2, 5)
            if response_events[id].wait(timeout=time_out):
                failures = 0
                break
            else:
                retries += 1
                print(f"r:[ID: {id}] Brak odpowiedzi - ponowne wysłanie wiadomości.")
                radio_handler.send(request)

        if retries == 3:
            print(f"[ID: {id}] Urządzenie nie odpowiada!")
            failures += 1

        if failures == 3:
            print(f"r:[ID: {id}] Urządzenie nie odpowiada. Sprawdź stan urządzenia, a następnie naciśnij na czujniku przycisk reset.")
            devices.remove(id)
            break
    print(f"[ID: {id}] Wątek dla urządzenia został zakończony. Oczekiwanie na ponowną rejestrację urządzenia")

print(f"Broker o ID obszaru: {this_gateway_id} - rozpoczyna pracę.")
radio_handler = RadioHandler(RADIO_MODE, receive_data)



try:
    while True:
        pass
except KeyboardInterrupt:
    print("Reception stopped.")
finally:
    radio_handler.cleanup()  # Clean up GPIO and close SPI
