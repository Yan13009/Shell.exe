#!/bin/bash

if [ $# -ne 3 ]; then
  echo "Utilisation : $0 <nombre1> <opérateur> <nombre2>"
  exit 1
fi

nombre1="$1"
operateur="$2"
nombre2="$3"

resultat=0

case "$operateur" in
  + | - | \* | /)
    resultat=$(echo "$nombre1 $operateur $nombre2" | bc)
    ;;
  *)
    echo "Opérateur non reconnu : $operateur"
    exit 1
    ;;
esac

echo "Résultat : $resultat"

