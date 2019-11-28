# Objectif 

Ce projet a pour but d'évaluer la compréhension de Linux, du langage Markdown, de Git et de Github. 

# BonYour Tout le monde

# Livrables du projet :

Le lien de votre **dépôt Github** ainsi que celui de la **page** associée. 

# Consignes générales

- Ajoutez un `readme.md` qui documente votre travail c'est-à-dire qui explique comment exécuter le script ainsi que les résultats attendus (vous pouvez ajouter des images illustratives). 

- **Pas d'actions superflues.** Porter une attention particulière à la pertinence de chaque commit ainsi qu'à clarté et à la concision du message associé.

- Construisez vous-même des cas de test pour le script. 

# Déroulement du projet

1. *Forkez* ce dépôt dans votre compte Github 

2. *Clonez* avec la commande `git clone` votre copie en local

3. Créez le script `search_fichiers.sh` pour qu'il effectue les actions suivantes :

- Annonce le moment de son exécution 	
- Souhaite la bienvenue à l'utilisateur (utiliser une variable d'environnement) qui l'a lancé et lui demande de taper le chemin d'un répertoire 

**Exemple :** Bienvenu Georges, nous sommes le 28 Novembre 2018. 

Quel répertoire vous intéresse aujourd'hui ? 

- Affiche le répertoire fourni

4. *Commitez* le fichier dans votre dépôt local puis pousser les modifications dans le dépôt distant 

5. Sur le dépôt local, créer une nouvelle branche. 

6. Editez le script dans la nouvelle branche pour qu'il affiche tous les fichiers dont le nom respecte un pattern fourni en paramètre (du répertoire saisi par l'utilisateur). 

**Exemple :** `./search_fichiers.sh photo_20?.png` doit retourner tous les fichiers comme *photo_20x.png*, *photo_206.png*...

7. Poussez les changements dans votre dépôt distant 

8. Faire une *pull request* de la nouvelle branche sur master. Fusionnez la pull request 

8. En local, fusionnez la nouvelle branche à master. 

9. Editez le script pour qu'il filtre sa sortie pour afficher uniquement les fichiers qui contiennent un deuxième pattern fourni en paramètre (de manière insensible à la casse). 

**Exemple :** `./search_fichiers.sh readm?.md bon?our` doit retourner tous les fichiers dont le nom est sous la forme *readm?.md* et qui contiennent une ligne avec *bonjour*, *bOn5ouR*, *bOnJoUR*...

10. Poussez les changements dans votre dépôt distant 

11. Vous n'avez plus besoin du fichier Consignes.md, supprimez-le en local et poussez les modifications sur Github.
