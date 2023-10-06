#!/bin/bash

# Vérifier le nombre d'arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 nouveauFichier.txt contenu.txt"
  exit 1
fi

# Récupérer les noms des fichiers à partir des arguments
nouveauFichier="$1"
contenuFichier="$2"

# Copier le contenu du fichier source vers le nouveau fichier en utilisant la redirection
cat "$contenuFichier" > "$nouveauFichier"

# Vérifier si la copie a réussi
if [ $? -eq 0 ]; then
  echo "Le contenu de $contenuFichier a été copié avec succès dans $nouveauFichier."
else
  echo "Une erreur s'est produite lors de la copie du contenu de $contenuFichier dans $nouveauFichier."
fi
