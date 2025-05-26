# -*- coding: utf-8 -*-
import socket
import base64
import re

# Connexion au serveur
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("challenge01.root-me.org", 52023))

# Réception du message complet
data = s.recv(4096)
message = data.decode('utf-8', errors='ignore')
print("Message recu :\n", message)

# Extraire la chaîne Base64 entre apostrophes
match = re.search(r"'([A-Za-z0-9+/=]+)'", message)
if match:
    b64_str = match.group(1)
    decoded = base64.b64decode(b64_str).decode('utf-8', errors='ignore')
    print("Envoi de la reponse :", decoded)
    s.sendall((decoded + '\n').encode('utf-8'))  # <- \n important !
else:
    print("Aucune chaine Base64 trouvee.")
    s.close()
    exit()

# Réception de la réponse du serveur
final_response = s.recv(4096)
print("Reponse finale :", final_response.decode('utf-8', errors='ignore'))

s.close()
