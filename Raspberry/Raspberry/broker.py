from radio_handle import *
import argparse
import threading
import time
import random

RADIO_MODE = RadioMode.FSK # Set the radio modulation: RadioMode.LORA or RadioMode.FSK
SEND_DELAY = 5  # Delay [s] between sending messages
SEND_MSG = "Hello!"  # Message to send
SEND_MESSAGES = False  # Set to False to only receive messages

devices = []
this_gateway_id = '10' #z parametru
response_events = {}
print(f"Broker o ID obszaru: {this_gateway_id} - rozpoczyna pracę.")
# Callback function to handle received data.
# This function will be called every time data is received.
def data_callback(data, rssi=None, index=None):
    print(f"Received data: {data}")
    msg_len = len(data)
    length_correct = False
    correct_gateway = False
    if msg_len == 7:
        gateway_id = data[1:3]
        length_correct = True
    if length_correct and gateway_id == this_gateway_id: #Sprawdzamy, czy wiadomość kierowana jest do właściwej bramki
        correct_gateway = True

    if correct_gateway == True:
        message_type = int(data[:1]) #0,3,4
        node_id = data[3:5]
        window = int(data[5:6])
        if message_type == 3 and node_id in devices:
            if window == 0:
                window_state = 'zamknięte'
            if window == 1:
                window_state = 'otwarte'
            if message_type == 3:
                print(f"o:[ID: {node_id}][RSSI: {rssi}] Odebrano wiadomość, okno jest " + window_state)
                #print("Odebrano wiadomość od: " + node_id + ". Okno jest: " +window_state)
                send_signal_received(node_id)  # Sygnalizuje odebranie wiadomości od konkretnego node_id
        #if message_type == 3 and node_id not in devices: - próba wysłania wiadomości przez nieuwierzytelnione połączenie. 
        #Gdy będzie zaimplementowana kryptografia urządzenie będzie tą wiadomością ponownie rejestrowane, jeżeli klucze będą się zgadzać - odpowiedź na przypadkowe wyrejestrowanie
        #Pytanie: czy (gdy będzie kryptografia) jeżeli urządzenie błędnie się (nie)uwierzytelni, to czy ignorujemy wiadomość czy wyrejestrowujemy urządzenie jako skompromitowane? będzie się mogło zarejestrować ponownie tylko w 3
        if message_type == 0 and node_id not in devices: #Pierwsza rejestracja (pytanie: gdy będzie kryptografia, to czy tą wiadomością będzie mogło urządzenie się rejestrować ponownie? czy tylko z zapisanym kluczem)
            devices.append(node_id)           
            print(f"o:[ID: {node_id}][RSSI: {rssi}] Zarejestrowano nowy czujnik.")
            response_events[node_id] = threading.Event()  # Inicjalizacja Event dla nowego node_id
            message_thread = threading.Thread(target=cycle_executor, args=(node_id,))
            message_thread.start()
        #if message_type == 0 and node_id in devices: - ponowna próba rejestracji? Możliwy konflikt/atak


def send_signal_received(node_id):
    if node_id in response_events:
        response_events[node_id].set()

def cycle_executor(id):
    failures = 0
    msg_to_send = "1" + this_gateway_id + id
    for i in range(2):
        sleep_time = 2 + random.randint(3,8)
        time.sleep(sleep_time)
        radio_handler.send(msg_to_send)    
    while True:
        wait_time = 30 + random.randint(1, 5)
        time.sleep(wait_time)
        response_events[id].clear() #Rozpoczynamy oczekiwanie na wiadomość
        request = "2" + this_gateway_id + id
        radio_handler.send(request)
        print(f"r:[ID: {id}] Wysyłanie żądania.")

        retries = 0
        while retries < 3:
            time_out = 3 + random.randint(2, 5)
            if response_events[id].wait(timeout=time_out):
                break
            else:
                retries += 1
                if retries < 3:
                    print(f"r:[ID: {id}] Brak odpowiedzi - ponowne wysłanie wiadomości.")
                    radio_handler.send(request)

        # Krok 5: Jeśli po 3 próbach nie ma odpowiedzi, wyświetl alert
        if retries == 3:
            print(f"[ID: {id}] Urządzenie nie odpowiada!")
            failures += 1

        if failures == 3:
            print(f"r:[ID: {id}] Urządzenie nie odpowiada. Sprawdź stan urządzenia, a następnie naciśnij na czujniku przycisk reset.")
            devices.remove(id)
            break
    print(f"[ID: {id}] Wątek dla urządzenia został zakończony. Oczekiwanie na ponowną rejestrację urządzenia")


# Initialize the RadioHandler with mode of choice and the data callback.
# The RadioHandler will start receiving data in a separate thread.
radio_handler = RadioHandler(RADIO_MODE, data_callback)


#if SEND_MESSAGES:
    # Function to send messages every 10 seconds
#    def send_messages():
#        while True:
#            radio_handler.send(SEND_MSG)
#            sleep(SEND_DELAY)  # Add a delay to avoid spamming messages

    # Start the send_messages function in a separate thread
#    send_thread = Thread(target=send_messages)
    # Set the thread as a daemon so it will shut down on program exit
#    send_thread.daemon = True

    # Start the send thread. It will send messages every 10 seconds. After every send operation, the radio handler will go back to receiving mode.
 #   send_thread.start()

try:
    while True:
        pass
except KeyboardInterrupt:
    print("Reception stopped.")
finally:
    radio_handler.cleanup()  # Clean up GPIO and close SPI
