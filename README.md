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
    chmod +x variable.sh
    ./variable.sh

## Condition
    En bash on fait des conditions avec if

    Pour choisir le shell que l'on veut utiliser (shebang)
    #! /bin/bash

    ```bash
    nom="arthur"
    if [[ "$nom" == "arthur" ]] ; then
        echo "bienvenu"
    else 
        echo "bye"
    fi
    ```
    ```
    du -s # affiche la taille du répétoire courant.
    # on veut récupérer la taille du répétoire
    # on utilise cut -f1 qui récupère la première partie de la chaine
    # cut va délimiter les parties par un tab.
    ```
## Boucles
    Action à faire plusieurs fois
    ```bash
    #
    for fichier(variable) in list d'element "fichier1 "fichier2" "blabal3" ; do
    #la varible fichier va prendre comme valeur à chaque itération fichier1 puis fichier2 etc
    # à chaque iteration faire la commende touch donc touch fichier1 
    # itération 2 touch fichier2
    # iteration 3 touch blabla3
        touch "$fichier"
    done

    # seq n donne une sequence de fichire jusqu'a n
    # seq 3 donne 1 2 3
    for i in $(seq 5) ; do 
        mkdir dossier$i
    done
    ```