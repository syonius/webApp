#!/bin/zsh
# Spustí lokálny server pre webApp. iPhone musí byť na tej istej Wi-Fi.
cd "$(dirname "$0")"
IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1)
echo "Na iPhone otvor v Safari:  http://$IP:8080"
echo "Potom: Zdieľať -> Pridať na plochu."
echo "Ukončenie: Ctrl+C"
open "http://localhost:8080" 
python3 -m http.server 8080 --bind 0.0.0.0
