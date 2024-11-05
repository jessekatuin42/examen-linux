#!/bin/bash

# Vraag de gebruiker of ze Docker willen installeren
read -p "Wil je Docker installeren? (Y/N): " antwoord

# Controleer het antwoord
if [[ "$antwoord" == "Y" || "$antwoord" == "y" ]]; then
    # Controleer of het bestand docker-install.sh bestaat en uitvoerbaar is
    if [[ -f "docker-install.sh" && -x "docker-install.sh" ]]; then
        echo "Docker wordt geïnstalleerd..."
        ./docker-install.sh
    else
        echo "Fout: Het bestand docker-install.sh bestaat niet of is niet uitvoerbaar."
    fi
else
    echo "Docker installatie geannuleerd."
fi
