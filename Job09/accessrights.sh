s#!/bin/bash

# Chemin vers le fichier CSV
csv_file="Shell_Userlist.csv"

if [ -f "$csv_file" ]; then
  while IFS=, read -r username admin
  do
    sudo useradd "$username" -m -s /bin/bash
    echo "L'utilisateur $username a été créé."
  done < "$csv_file"
else
  echo "Le fichier CSV $csv_file n'existe pas."
fi

echo "yanis le BG "
