#!/bin/bash
# Indique que ce fichier est exécuté par le programme bash

# Va dans le dossier du site, sinon affiche une erreur et arrête
cd ~/serveur/presentation-equipe || { echo "Dossier introuvable"; exit 1; }

# Télécharge la dernière version du site depuis GitHub
git pull

# Copie les fichiers du site dans le dossier servi par nginx
sudo cp index.html style.css /var/www/html/

# Affiche un message pour dire que c'est fini
echo "Déploiement terminé"
