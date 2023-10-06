#!/bin/bash

# Vérifier le nombre d'arguments
if [ $# -ne 3 ]; then
  echo "Usage: $0 nombre1 opérateur nombre2"
  exit 1
fi

# Récupérer les nombres et l'opérateur depuis les arguments
nombre1="$1"
operateur="$2"
nombre2="$3"

# Effectuer l'opération en utilisant la commande 'bc'
resultat=$(echo "$nombre1 $operateur $nombre2" | bc)

# Afficher le résultat
echo "Le résultat de $nombre1 $operateur $nombre2 est : $resultat"
