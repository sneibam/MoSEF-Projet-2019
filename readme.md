
# Projet M2 MoSEF-Linux

Projet Linux dans le cadre du *M2 MoSEF* (Université de Paris 1 Panthéon Sorbonne)

## Objectif

L'objectif de ce programme est de permettre à l'utilisateur de rechercher dans un répertoire bien déterminé, les fichiers qui correspondent à un pattern qu'il aura lui meme définit.
L'utilisateur pourra également rechercher uniquement les fichiers qui contiennent au moins une ligne correspondant à un pattern.

## Démo

Afin de lancer le script, il suffit d'ecrire la ligne suivante sur le terminal.

`$./search_fichiers_sh pattern1 pattern2`

Afin d'illustrer les fonctionnalités du script, un répertoire *Test* a été créé. Celui ci contient quelques fichiers de test.

Voici un exemple de l'execution de la premiere partie du script avec uniquement un argument qui correspond au pattern des fichers à rechercher.

![alt_text](/Screenshots/partie1.png)

Voici un deuxième example avec l'ajout d'un second argument permettant de sélectionner uniquement les fichiers qui contiennent au moins une ligne avec le pattern 2.

![alt_text](/Screenshots/partie2.png)