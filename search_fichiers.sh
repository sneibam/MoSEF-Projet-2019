#!/bin/sh

# Verification du nombre d'arguments
if [ $# -lt 1 ]
then
	echo "Nombre de parametres incorrect !\nVoici la syntaxe correct => " $0 " pattern_nom_fichier pattern_contenu_fichier\n"
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
	echo "Le repertoire '"$directory"' n'existe pas !"
	exit 4
else
	echo "Vous avez choisi le repertoire '"$directory"'.\n"
fi
 

echo "Voici la liste des fichiers qui se trouvent dans le repertoire '"$directory"' : \n"


find $directory -maxdepth 1 -iname "$1"


if [ $# -eq 2 ]
then

	echo -n "Voici la liste des fichiers qui se trouvent dans le repertoire '"$directory"' et qui contiennent une ligne avec '"$2"': \n"

	find $directory -maxdepth 1 -iname "$1" -exec grep -EiH "$2" {} +

fi
