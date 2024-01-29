#! /bin/bash

nom="arthur"

if [[ "$nom" == "arthur" ]] ; then
    echo "bienvenu"
else 
    echo "bye"
fi

#le script a besoin d'avoir l'accès root
if [[ ! "$USER" == "root" ]] ; then
    echo "Use root priviliage to use this program"
    exit 1
fi
#On met à jour le système
apt-get update && apt-get upgrade

chemin="/etc/lsb-release"
# -e vérifie que le fichier existe
if [[ -e "$chemin" ]] ; then 
    echo "Coucou"
else
    echo "Pas trouvé"
fi

# -gt greater than
if [[ $(du -s . | cut -f1) -gt 1000 ]]; then
    echo "Le dossier est plus grand que 1 Mo."
elif [[ $(du -s . | cut -f1) -lt 1000 ]]; then
    echo "Le dossier est plus petit que 1 Mo."
else
    echo "Le dossier est exactement 1 Mo."
fi
