# Inception

## Table of contents

## Requirements
>  Each docker must have its own ```Dockerfile```, those files are called by a ```docker-compose.yml``` in a ```Makefile```.  
### Les différents containers à mettre en place :
 - [ ] NGINX _(avec TLS v1.2)_
 - [ ]  WordPress _(avec php-fpm configuré)_
 - [ ]  MARIADB _(sans NGINX)_
### Deux **volumes** disponibles à partir du dossier `` /home/ <login> /data ``:
 - [ ] Volume  **BBD WordPress**
 - [ ] Volume **WordsPress Website Files**
### Mettre en place :
 - [ ] Un [_**docker-network**_](https://docs.docker.com/engine/reference/commandline/network/) qui fera le lien entre vos containers.
### Les utilisateurs à créer dans notre base de données WordPress:
 - [ ] utilisateur **Admin** ( no admin as pseudo)
 - [ ] utilisateur standard
### Nom de domaines:
 - [ ] login.42.fr
### Règles complémentaires
 - [ ] variable d'environnements obligatoires (fichier .env)
 - [ ] latest tag forbidden
 - [ ] Nginx seul point d'entrée
 
<img src="https://user-images.githubusercontent.com/85625233/194904961-6914bc5b-d72f-410a-9f20-eb2004fbd8bb.png" width="500"/> 





## All documentation in my Obsidian Vault
