#! /bin/bash

nom="Arthur"
echo $nom

age="23" 
echo $age

echo "$nom a $age ans"

chemin="/var/log"

ls $chemin

contenu=$(ls /var/log)

echo $contenu