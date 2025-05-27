import hashlib

def sub_1380(username: str):
    # Simule la concaténation username + reverse(username)
    if len(username) > 128:
        raise ValueError("Username too long")
    
    # Prépare buffer 256 octets
    buf = bytearray(256)
    u_bytes = username.encode('ascii')
    length = len(u_bytes)
    
    # Copie username dans buf
    buf[0:length] = u_bytes
    
    # Copie reverse(username) après
    rev_bytes = u_bytes[::-1]
    buf[length:length*2] = rev_bytes
    
    # MD5 du buffer
    md5 = hashlib.md5()
    md5.update(buf)
    digest = md5.digest()  # 16 bytes
    
    # Convertir les 16 bytes en 3 entiers 32 bits (12 bytes utilisés)
    # Le code C semble copier dans un tableau de 3 int (12 bytes)
    v3 = []
    for i in range(0, 12, 4):
        val = int.from_bytes(digest[i:i+4], byteorder='little')
        v3.append(val)
    return v3

def sub_1290(a1):
    # Compte le nombre de bits à 1 dans a1
    count = 0
    while a1:
        a1 &= a1 - 1
        count += 1
    return count

def sub_12B0(serial_part, unk_data):
    """
    À compléter : applique un algorithme bit à bit entre serial_part et unk_data.
    serial_part: tuple de 2 entiers 32 bits (comme dans le C code)
    unk_data: tableau (bytes ou int array) de données (taille ~128*4 = 512 octets)
    
    Retourne un tuple de 2 entiers 32 bits, résultat de l'opération.
    """
    # Comme la fonction C est partiellement illisible, on laisse un stub ici.
    # Vous pourrez compléter en analysant la fonction sub_12B0 plus précisément.
    raise NotImplementedError("sub_12B0 à implémenter quand unk_data est connue")

def sub_1470(username, serial, unk_43A0, unk_41A0):
    """
    username: string
    serial: tuple de 3 entiers (s0, s1, s2)
    unk_43A0, unk_41A0: données nécessaires (bytes ou int arrays)
    
    Retourne True si serial valide pour username, False sinon.
    """
    v3 = sub_1380(username)
    s0, s1, s2 = serial
    
    try:
        r0 = sub_12B0((s0, s1), unk_43A0)
        r1 = sub_12B0((s1, s2), unk_41A0)
    except NotImplementedError:
        print("sub_12B0 non implémentée, impossible de valider.")
        return False
    
    # Vérifie que les valeurs retournées correspondent à v3
    if r0[0] == v3[0] and r0[1] == v3[1] and r1[1] == v3[2]:
        return True
    return False

if __name__ == "__main__":
    username = "root-me"
    print("Calcul v3 pour username:", username)
    v3 = sub_1380(username)
    print("v3:", v3)
    
    # Exemple de serial bidon à tester
    serial = (0x12345678, 0x9abcdef0, 0xdeadbeef)
    unk_43A0 = b""  # Remplir plus tard
    unk_41A0 = b""  # Remplir plus tard
    
    valid = sub_1470(username, serial, unk_43A0, unk_41A0)
    print("Serial valide ?", valid)
