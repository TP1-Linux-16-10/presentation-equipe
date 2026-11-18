# Part de l'image officielle nginx, version légère
FROM nginx:alpine
# Copie les fichiers du site dans le dossier publié par nginx
COPY index.html style.css /usr/share/nginx/html/
# Indique que le conteneur écoute sur le port 80
EXPOSE 80