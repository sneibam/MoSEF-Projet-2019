#!/bin/bash


# Verification du nombre d'arguments

if [ $# -ne 1 ]
then
	echo -ne "Nombre de parametres incorrect !\nVoici la syntaxe correct => " $0 " pattern\n"
	exit 2
fi


# Recupere la date avec le bon format
now=$(date +'%d %B %Y')
#name=$USERNAME

echo 'Bienvenue' $USERNAME ', nous sommes le ' $now

echo "Quel répertoire vous intéresse aujourd'hui ?"

read directory

if [ ! -d "$directory" ]
then
	echo -ne "Le repertoire '"$directory"' n'existe pas !"
	exit 4
else
	echo -ne "Vous avez choisi le repertoire '"$directory"'.\n"
fi
 

ls $directory/$1
