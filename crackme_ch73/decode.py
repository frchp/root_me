STRLEN_STR = 104
KEY = [ -88, -106, 79, 127, 62, -108, 10, -107 ]
KEY_PATCHED = [ 177, 151, 86, 126, 39, 149, 19, 148 ]

CODED_PASSWORD = 0xA377AD570465FDF9

  # for ( i = 0; i < strlen(a1); ++i )
  #   a1[i] ^= key[i % 8];
  # if ( *(_QWORD *)a1 == 0xA377AD570465FDF9LL )
  #   return puts("C'est correct !");

  # a1 == 0xA377AD570465FDF9
  # a1[0] ^ key [0] = 0xA3

def split_64bit_to_bytes(value):
  if not (0 <= value <= 0xFFFFFFFFFFFFFFFF):
    raise ValueError("L'entier doit être entre 0 et 2^64 - 1")
  bytes_list = [(value >> (8 * i)) & 0xFF for i in range(8)]
  return bytes_list

def decode(code, key):
  if not code or not key:
    raise ValueError("Les tableaux 'code' et 'key' doivent être non vides.")

  result = []
  key_len = len(key)

  for i, val in enumerate(code):
    key_val = key[i % key_len]
    result.append(val ^ key_val)

  return result

print("==== FOUND CODED PASSWORD ====")
array_char = split_64bit_to_bytes(CODED_PASSWORD)
print([hex(c) for c in array_char])
# print("==== FOUND KEY IN HEXA ====")
# array_key = bytes([b % 256 for b in KEY])
# print(array_key)
print("==== DECODED KEY ====")
# array_decoded = decode(array_char, array_key)
array_decoded = decode(array_char, KEY_PATCHED)
print([hex(c) for c in array_decoded])
print([chr(c) for c in array_decoded])
