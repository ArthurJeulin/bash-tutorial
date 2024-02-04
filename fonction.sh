#! /bin/bash

ma_fonction(){
    if [[ ! -e "$1" ]] ; then
        mkdir "$1"
    fi
}

abc="123"
mon_autre_fonction () {
    abc="456"
    def="789"
}

#appel mon_autre_fonction
mon_autre_fonction
echo "$abc"
# on voit que la variable def est accessible même hors 
# du scope de def
echo "$def"