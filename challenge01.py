# -*- coding: utf-8 -*-
import socket
import math
import re

# Connexion au serveur
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("challenge01.root-me.org", 52002))

# R�ception du message complet
data = s.recv(4096)
message = data.decode('utf-8', errors='ignore')
print("Message recu :\n", message)

# Extraction des deux nombres avec une expression r�guli�re
match = re.search(r'square root of (\d+).*?multiply by (\d+)', message)

if match:
    number1 = int(match.group(1))
    number2 = int(match.group(2))

    # Calcul : racine carr�e de number1, multipli�e par number2
    result = math.sqrt(number1) * number2

    # Arrondi ou formatage selon les besoins du serveur
    response = f"{result:.2f}\n"
    
    print("Envoi de la reponse :", response)
    s.sendall(response.encode())

    # R�ception de la r�ponse du serveur
    final_response = s.recv(4096)
    print("Reponse finale :", final_response.decode('utf-8', errors='ignore'))
else:
    print("Impossible d'analyser la question du serveur.")

s.close()
