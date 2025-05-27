import re

filename = "sql_decoded.txt"

char_pos_re = re.compile(r"substring\(password,(\d+),1\)")
bit_pos_re = re.compile(r"substring\(bin\(ascii\(substring\(password,\d+,1\)\)\),(\d+),1\)")
duration_re = re.compile(r"Durée jusqu'au log suivant : ([\d\.]+) secondes")

def bits_value(duration):
    # Pour les cas 2 bits
    if duration == 2.0:
        return '01'
    elif duration == 4.0:
        return '10'
    elif duration == 6.0:
        return '11'
    else:
        return '00'

def bit7_value(duration):
    # Pour le bit 7, 1 bit seul, mapping basé sur les durées fournies
    if duration == 2.0:
        return '0'
    elif duration == 4.0:
        return '1'
    else:
        return '0'  # par défaut

with open(filename, "r") as f:
    content = f.read()

blocks = re.split(r"\[\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}[^\]]*\] Injection trouvée\s*", content)
if blocks[0].strip() == '':
    blocks = blocks[1:]

array_bits = []
for block in blocks:
    char_match = char_pos_re.search(block)
    bit_match = bit_pos_re.search(block)
    duration_match = duration_re.search(block)

    char_num = int(char_match.group(1)) if char_match else None
    bit_num = int(bit_match.group(1)) if bit_match else None
    duration = float(duration_match.group(1)) if duration_match else None

    # Cas spécial pour bit 7 : on détecte si seulement 1 bit est extrait
    # On peut vérifier dans le texte s'il y a un seul substring(bin(...),7,1) et pas concat(...)
    # Ici on simplifie en supposant que si bit_num == 7 ET pas de concat de 2 bits, alors c'est bit7 special

    # Chercher concat(...) dans le block
    is_concat = "concat(" in block

    if char_num is not None and bit_num is not None and duration is not None:
        if bit_num == 7 and not is_concat:
            bits = bit7_value(duration)
            print(f"Caractère extrait : {char_num}")
            print(f"Bit extrait (bit 7 spécial) : {bit_num}")
            print(f"Durée : {duration} secondes")
            print(f"Bit déduit de la durée : {bits}")
            print("-"*40)
        else:
            bits = bits_value(duration)
            print(f"Caractère extrait : {char_num}")
            print(f"Bits extraits : {bit_num} et {bit_num + 1}")
            print(f"Durée : {duration} secondes")
            print(f"Bits déduits de la durée : {bits}")
            print("-"*40)

    array_bits.append(bits)

print(array_bits)
str_array = ""
for i in range(len(array_bits)):
  str_array += array_bits[i]
  if((i + 1) % 4 == 0):
    str_array = str_array[::-1]
    print(str_array)
    str_array = ""
    print(" ")
