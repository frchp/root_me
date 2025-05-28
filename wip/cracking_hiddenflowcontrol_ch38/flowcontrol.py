def rc4_init(key: bytes) -> list:
    """ RC4 Key Scheduling Algorithm (KSA) """
    s = list(range(256))
    j = 0
    for i in range(256):
        j = (j + s[i] + key[i % len(key)]) % 256
        s[i], s[j] = s[j], s[i]
    return s

def rc4_crypt(data: bytes, sbox: list) -> bytes:
    """ RC4 Pseudo-Random Generation Algorithm (PRGA) """
    i = j = 0
    result = bytearray()
    s = sbox.copy()
    for byte in data:
        i = (i + 1) % 256
        j = (j + s[i]) % 256
        s[i], s[j] = s[j], s[i]
        k = s[(s[i] + s[j]) % 256]
        result.append(byte ^ k)
    return bytes(result)

# Clé extraite du binaire
key = b"fRyIsSoOO"

# Données chiffrées (sub_401332)
encrypted_data = bytes([
    0x65, 0xbb, 0x09, 0x66, 0x13, 0x99, 0xf0, 0x8e,
    0x98, 0xa7, 0x00, 0x96, 0x64, 0x1c, 0x17, 0xf1,
    0x27, 0xb0, 0x97, 0x87, 0x31, 0x6d, 0xde, 0x2b,
    0x81, 0x18, 0xab, 0x99, 0x50, 0x5c, 0x45, 0x37
])

# Déchiffrement
sbox = rc4_init(key)
decrypted = rc4_crypt(encrypted_data, sbox)

# Affichage
print("Message déchiffré :", decrypted.decode(errors="replace"))
