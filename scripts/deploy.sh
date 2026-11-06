#!/bin/bash
# Définit l'interpréteur : le script sera exécuté avec bash.

# ---1) Aller dans le dossier du site -------------------------------------
SITE_DIR="$HOME/serveur/presentation-equipe"
# On mémorise le chemin du dossier du site dans une variable
if [ ! -d "$SITE_DIR" ]; then
# Teste si le dossier n'existe pas ; le ! inverse le test.
    echo "Erreur : le dossier $SITE_DIR n'existe pas. Déploiement annulé."
    # Affiche un message d'erreur à l'utilisateur.
    exit 1
    # Quitte le script avec le code 1 pour ne rien faire d'autre.
fi

cd "$SITE_DIR" || exit 1
# Se place dans le dossier du site

# --- 2) Mettre à jour le code avec Git ------------------------------------
git pull
# Récupère la dernière version du dépôt GitHub.

# --- 3) Copier les fichiers vers le serveur web --------------------------
sudo cp index.html /var/www/html/index.html
# Copie la page HTML vers le dossier servi par le serveur web.

sudo cp style.css /var/www/html/style.css
# Copie la feuille de styles vers le même dossier du serveur web.

# --- 4) Message de fin ----------------------------------------------------
echo "Déploiement terminé : index.html et style.css sont dans /var/www/html"
# Affiche un message de fin pour confirmer que tout est bon.
