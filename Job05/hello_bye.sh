#!/bin/bash

# Vérifier le nombre d'arguments
if [ $# -ne 1 ]; then
  echo "Usage: $0 [Hello|Bye]"
  exit 1
fi

# Récupérer l'argument passé
argument="$1"

# Utiliser une instruction conditionnelle pour afficher le message approprié
if [ "$argument" = "Hello" ]; then
  echo "Bonjour, je suis un script !"
elif [ "$argument" = "Bye" ]; then
  echo "Au revoir et bonne journée !"
else
  echo "Argument non reconnu : $argument. Utilisez 'Hello' ou 'Bye'."
fi
