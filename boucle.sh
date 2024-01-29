#! /bin/bash 

# seq n donne une sequence de fichire jusqu'a n
# seq 3 donne 1 2 3
for i in $(seq 5) ; do 
    mkdir dossier$i
done

echo "Crée 5 dossier"

#ls affiche tous les fichiers dans le dossier courrat
# avec grep on recupérer les fichier qui s'appelle dossier
for element in "$(ls | grep dossier)" ; do 
    rm -r "$element"
done

# while true ; do
# #data affiche la date 
#     date +"%T"
#     sleep 1
# done
#timestampe nombre de second qui c'est écoulé depuis le 1er janvier 1970
while [[ $(date +"%s") -lt 1706956590 ]] ; do
    echo "pas encore ..."
    sleep 1
done