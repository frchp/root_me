import re
import base64
import urllib.parse
from datetime import datetime

# Fichier de log
log_file = "ch13.txt"

# Expression régulière pour extraire la date/heure et le paramètre 'order'
pattern = re.compile(r'\[(.*?)\].*GET\s+/admin/\?action=membres&order=([^ ]+)')

# Fonction pour décoder les injections
def decode_order_param(encoded_param):
    try:
        url_decoded = urllib.parse.unquote(encoded_param)
        base64_decoded = base64.b64decode(url_decoded).decode('utf-8')
        return base64_decoded
    except Exception as e:
        return f"Erreur de décodage: {e}"

# Fonction pour parser la date au format Apache log
def parse_date(date_str):
    # Exemple de date_str: '18/Jun/2015:12:12:54 +0200'
    return datetime.strptime(date_str, '%d/%b/%Y:%H:%M:%S %z')

logs = []

# Lecture du fichier et extraction
with open(log_file, "r") as f:
    for line in f:
        match = pattern.search(line)
        if match:
            date_str = match.group(1)
            dt = parse_date(date_str)
            encoded_order = match.group(2)
            decoded = decode_order_param(encoded_order)
            logs.append((dt, decoded))

# Affichage avec durée entre logs
for i in range(len(logs)):
    dt, decoded = logs[i]
    print(f"[{dt}] Injection trouvée :\n{decoded}")
    if i < len(logs) - 1:
        delta = logs[i+1][0] - dt
        print(f"Durée jusqu'au log suivant : {delta.total_seconds()} secondes")
    print('-'*60)
