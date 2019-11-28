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

# Lire la saisie de l'utilisateur
read directory


# On vérifie si la chaine entrée par l'utilisateur correspond bien à un répertoire

if [ ! -d "$directory" ]
then
	echo "Le repertoire '"$directory"' n'existe pas !"
	exit 4
else
	echo "Vous avez choisi le repertoire '"$directory"'.\n"
fi
 

echo "Voici la liste des fichiers qui se trouvent dans le repertoire '"$directory"' : \n"


find $directory -maxdepth 1 -iname "$1"


# Si l'utilisateur a entré un deuxieme argument au script, alors on éxécute la deuxième partie du script

if [ $# -eq 2 ]
then

	echo -n "Voici la liste des fichiers qui se trouvent dans le repertoire '"$directory"' et qui contiennent une ligne avec '"$2"': \n"

	find $directory -maxdepth 1 -iname "$1" -exec grep -EiH "$2" {} +

fi
