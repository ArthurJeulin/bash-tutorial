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
    ```bash
    du -s # affiche la taille du répétoire courant.
    # on veut récupérer la taille du répétoire
    # on utilise cut -f1 qui récupère la première partie de la chaine
    # cut va délimiter les parties par un tab.
    ```
## Boucles
    Action à faire plusieurs fois
    ```bash
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
## Fonction
Utilisation de Fonction : idempotence : on exécute un script n fois et l'on a le même résultat.
Par exemple dans un terminal on fait la commande mkdir folder. (crée un dossier)
Si on réexécute la même commande une autre fois on a cannot create directory 'dossier' : File exists
Pas idempotent car on a exécuté deux fois la même commande et on a eu 2 résultat différents.

```bash
# On ne peut pas mettre des arguments dans ()
# $1 argument pour le premier argument
# $n nr argument
ma_fonction() {
    if [[ ! -e $1]]; the
        mkdir $1
    fi
}

#on peut run dans le terminal la fonction 
ma_fonction dossier-cool

# dans mkdir il y a déjà un argument qui fait cela 
mkdir -p dossier-cool

# pas de scope dans les fonctions
# si on crée une variable dans le scope de la fonction, cette variable est global directement.
# même si on utilise plusieurs fichier bash qui s'appelle les un les autres si on utilise i pour une boucle
# la valeur de i restera la dernière valeur après une boucle par exemple

```
## Flux
pipe |

commande_1 | commande_2(récupère le flux de commande_1)
cat script.sh | grep 3 # on cherche 3 dans le fichier script.sh
on peut faire aussi
grep 3 script.sh

ls => programme qui affiche dans la sortie standard les fichiers d'ou je suis actuellement

ls | grep fonction

caractère chevron >
sortie de la commande à droite et l'on l'écrit dans un fichier
echo blabla > fichier.txt
attention on écrase le contenu à chaque fois
pour ajouter à la fin du fichier
echo blabla >> fichier.txt

< prend un fichier et l'ajoute dans input d'un programme.
grep quoi  < fichier2
cherche dans fichier2 "quoi"

 Maintenant on fait de la magie noir.

 grep quoi << EOF (arrete de lire lorsque EFO)
 << prend les inputs du terminal jusqu'a EOF et donne ça comme input a grep pour cherche quoi.

 || équivalent à OU
 mkdir dossier ||

 Pour savoir si la dernière commande a été reussi
 echo $?
 1- false
 0- true
 mkdir dossier || echo "ca marche pas"
 si la commande mkdir dossier fail alors on a echo "ca marche pas"
 si la commande mkdir dossier réussi alors on a pas echo "ca marche pas"
 utils si on ne veut pas que la commande nous retourne une erreur

 ## Filtrage de fichier
Comment filtrer du texte
cut permet de découpé une chaine de caractère
tr => trim enlever un petit bout de la chaine de caractère
tr -d \"
\ antislach => après on prend le caractère tel quel
-d = delimiter
grep VERSION_ID /etc/os-release
version=$(grep VERSION_ID /etc/os-release)
version=$(echo $version |cut -d "=" -f2 | tr -d \")

grep -R (recursif chercher dans les dossier)

grep -R VERSION_ID /etc

* expression régulière pour tout

for i in $(sequ 10) ; do touch fichier$i ; done
rm fichier*
enleve les fichiers de 1 à 3
rm fichier[1-3]

## Arguments
$1 argument 1 passé au script

```bash
echo $1
echo $2
```
script.sh argument1 argument2
$@ tous les arguments
$0 nom du script
$# retourne le nombre d'argument passé à la commande

## Incantation machi noir