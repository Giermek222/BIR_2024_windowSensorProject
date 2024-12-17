from Crypto.Cipher import AES
from Crypto.Util.Padding import pad


messagecounter1 = 0
messagecounter2 = 0
messagecounter3 = 0
key1 = "LubieRadioMocno!"
key2 = "BIRJestWPytkeBro"
key3 = "FKSPanyLORAToDno"

def decryptSecretForSpecificNode(secret, key, counter):
    window = 0
    bitKey = key.encode('utf-8')
    iv = b'\x00' * 16
    cipher_dec = AES.new(bitKey, AES.MODE_CBC, iv)
    # Tymczasowo dodane !!!
    secret_bytes = bytes(secret, 'utf-8')
    filtered_bytes = bytes(secret_bytes[i] for i in range(len(secret_bytes)) if i % 2 == 0)

    print(filtered_bytes)
    print("Secret bytes: " + filtered_bytes.hex())
    decrypted = cipher_dec.decrypt(filtered_bytes) #secret
    # Usuń wypełnienie bajtami zerowymi i zdekoduj na ciąg znaków

    #decrypted = decrypted.rstrip(b'\x00')  # Usuń dodatkowe bajty zerowe
    try:
        decrypted_str = decrypted.decode('utf-8')  # Zdekoduj na ciąg znaków
        print("odszyfrowanom: " + decrypted_str)

    except (ValueError, UnicodeDecodeError) as e:
        print(f"Deszyfrowane dane są nieprawidłowe: {decrypted}, błąd: {e}")
        return [False, counter]
    #decrypted = cipher_dec.decrypt(secret)
    #### Tutaj rozdzielamy licznik i okno
    window = int(decrypted_str[:1])
    decrypted_int = int(decrypted_str[1:16])
    #### Koniec
    print(f"decrypted: {decrypted_int}")
    if decrypted_int >= counter-5 or decrypted_int <= counter+5:
        return [True, counter + 1, window]
    else:
        return [False, counter, window]


def extract(secret, counter):
    window = int(secret[:1])
    received_counter = int(secret[1:16])
    if received_counter >= counter and received_counter <= counter+5:
        #print('działa')
        return [True, counter + 1, window]
    else:
        #print('nie działa')
        return [False, counter, window]

def generateSecretForSpecificNode(key, counter):
    #print(key)
    #print(bytes(key).hex())

    #if len(key) != 16:
    #    raise ValueError("Key must be exactly 16 bytes long.")

    padded_string = str(counter).zfill(16)
    #print("Padded String:", padded_string)

    data = padded_string.encode('utf-8')
    bitKey = key.encode('utf-8')

    iv = b'\x00' * 16
    cipher = AES.new(bitKey, AES.MODE_CBC, iv)

    ciphertext = cipher.encrypt(data)
    counter = counter + 1
    return padded_string, counter


def generateSecret(node_id):
    global messagecounter1
    global messagecounter2
    global messagecounter3
    global key1
    global key2
    global key3


    ciphertext = ''
    if node_id == '01':
        [ciphertext, messagecounter1] = generateSecretForSpecificNode(key1, messagecounter1)
    elif node_id == '02':
        [ciphertext, messagecounter2] =  generateSecretForSpecificNode(key2, messagecounter2)
    elif node_id == '03':
        [ciphertext, messagecounter3] =  generateSecretForSpecificNode(key3, messagecounter3)
    return ciphertext

def decryptSecret(secret, node_id):

    global messagecounter1
    global messagecounter2
    global messagecounter3
    global key1
    global key2
    global key3
    window = 0
    validated = False
    if node_id == '01':
        [validated, messagecounter1, window] = extract(secret, messagecounter1)
    elif node_id == '02':
        [validated, messagecounter2, window] =  extract(secret, messagecounter2)
    elif node_id == '03':
        [validated, messagecounter3, window] =  extract(secret, messagecounter3)
    return validated, window
