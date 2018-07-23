# API Météo

## Présentation

Pour ce projet python , nous avons choisi le contexte d’un service de prévision météo web.  

Notre solution propose les services suivants:
- Afficher les prévisions météorologiques hebdomadaire selon les villes comme Londres , Paris ou encore Madrid en saisissant le nom d’un lieu existant.
- Voir les informations de la météo d’une journée pour une ville depuis l’affichage hebdomadaire.

## Installation du projet

#### Python

Il est nécessaire d'avoir installé l'environnement sur Machine.

Pour avoir Python sous Windows ,vous pouvez récupérer une version de python téléchargable sur le site de [Python](https://www.python.org/getit/) (nous avons pris python-2.7.12.amd64.msi) et puis lancer l'executable.

- Dans vos variables d'environnement , rajouter le chemin 'C:\Python27' à la variable système PATH et puis rédémarrer votre pc.

- Pour tester que vous avez bien Python , ecrivez la commande 'python' dans un terminal.Ce résultat devrait apparaître

```
Python 2.7.12 (v2.7.12:d33e0cf91556, Jun 27 2016, 15:24:40) [MSC v.1500 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

#### Le Projet


Ensuite le projet sur récupère depuis un terminal git via la commande :   
```
 git clone https://github.com/Projet-Python/repo-projet.git

```

Puis pour lancer le projet depuis votre terminal. Lancer cette commande :  

```
 py main.py
```

Par précaution , nous mettons plus bas , la procédure pour installer Bottle.

## Installer Bottle

Dans le répertoire de votre projet, lancer la commande.
```
pip install bottle  
```
ou
```
py -m pip install bottle
```
