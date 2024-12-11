from constants import *
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad


messagecounter1 = 1
messagecounter2 = 0
messagecounter3 = 0
key1 = ""
key2 = ""
key3 = ""

def decryptSecretForSpecificNode(secret, key, counter):
    
    bitKey = key.encode('utf-8')
    iv = b'\x00' * 16
    cipher_dec = AES.new(bitKey, AES.MODE_CBC, iv)
    decrypted = cipher_dec.decrypt(secret)
    print(f"decrypted: {int(decrypted)}")
    if int(decrypted) >= counter-5 or int(decrypted) <= counter+5:
        return [True, counter + 1]
    else:
        return [False, counter]
    
def generateSecretForSpecificNode(key, counter):

    if len(key) != 16:
        raise ValueError("Key must be exactly 16 bytes long.")
    
    padded_string = str(counter).zfill(16)
    print("Padded String:", padded_string)
    
    data = padded_string.encode('utf-8')
    bitKey = key.encode('utf-8')

    iv = b'\x00' * 16  
    cipher = AES.new(bitKey, AES.MODE_CBC, iv)

    ciphertext = cipher.encrypt(data)
    counter += 1
    return ciphertext, counter


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

    validated = False
    if node_id == '01':
        [validated, messagecounter1] = decryptSecretForSpecificNode(secret, key1, messagecounter1)
    elif node_id == '02':
        [validated, messagecounter2] =  decryptSecretForSpecificNode(secret, key2, messagecounter2)
    elif node_id == '03':
        [validated, messagecounter3] =  decryptSecretForSpecificNode(secret, key3, messagecounter3)
    return validated
