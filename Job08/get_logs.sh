#!/bin/bash


utilisateur_cible="yanis"

nombre_connexions=$(last "$utilisateur_cible" | wc -l )
date_format=$(date +"%d-%m-%Y-%H-%M")

fichier_nom="number_connection-$date_format"
echo "$nombre_connexions" > "$fichier_nom"


tar -cvf "Backup/$fichier_nom.tar" "$fichier_nom"



