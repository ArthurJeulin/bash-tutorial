# Formation Bash

## D'ou vient Bash
    Histoire : vient du shell => Unix (ancètre de Unix)
    Stephane Bourne = > developpe the Bourne Shell dans Unix (ajoute boucle, fonctions etc).
    Version Linux Bourne Again shell = > Bash.

## Varible
    Suivre variable.sh
    Les variables sont des chaînes de caractères.
    Bonne pratique mettre les "" pour déclarer des variables.
    nom="Arthur"
    echo $nom

    age="32" // c'est un chaîne de caractère
    echo $age

    echo "$nom a $age ans"

    attention aux espace très sensible.

    age= "23" ne fonctionne pas

    enregistrer le resultat d'une commande dans une variable
    contenu=$(ls /var/log)
    run le fichier variable.sh
    ./variable.sh
