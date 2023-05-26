# 22.-Inception

## Table of contents
* [Goal](#Goal)  
* [Requirements](#Requirements)
* [Ressources](#Ressources)

## Goal
This project aims to broaden one's knowledge of `system administration` by using `Docker`.
The goal is to virtualize several `Docker images`, creating them in a `virtual machine`.

## Scheme
<img src="https://user-images.githubusercontent.com/85625233/194904961-6914bc5b-d72f-410a-9f20-eb2004fbd8bb.png" width="500"/> 

## Requirements
>  Each docker must have its own ```Dockerfile```, those files are called by a ```docker-compose.yml``` in a ```Makefile```.  
### Les différents containers à mettre en place :
 - [x] NGINX _(avec TLS v1.2)_
 - [x]  WordPress _(avec php-fpm configuré)_
 - [x]  MARIADB _(sans NGINX)_
### Deux **volumes** disponibles à partir du dossier `` /home/ <login> /data ``:
 - [x] Volume  **BBD WordPress**
 - [x] Volume **WordsPress Website Files**
### Mettre en place :
 - [x] Un [_**docker-network**_](https://docs.docker.com/engine/reference/commandline/network/) qui fera le lien entre vos containers.
### Les utilisateurs à créer dans notre base de données WordPress:
 - [x] utilisateur **Admin** ( no admin as pseudo)
 - [x] utilisateur standard
### Nom de domaines:
 - [x] login.42.fr
### Règles complémentaires
 - [x] variable d'environnements obligatoires (fichier .env)
 - [x] latest tag forbidden
 - [x] Nginx seul point d'entrée
 
## Bonus Services
 - [x] Ftp
 - [x] Redis Cache
 - [x] Website Statique
 - [x] Adminer
 - [x] Cadvisor

## 42 Project 125/100

## Ressources 
 - Installer
      - [Installation Docker Desktop](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)
      - [Openclassroom](https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker/6211458-lancez-votre-premier-conteneur-en-local)
      - [Bien comprendre et maîtriser Docker ! avec videos](https://datascientest.com/docker-guide-complet)
   - Linux container, base image
      - [Docker Cgroup & Namespaces](https://bikramat.medium.com/namespace-vs-cgroup-60c832c6b8c8)
      - [Alpine vs Debian + Image and Docker def](https://naiveskill.com/docker-base-image/)
   - Alpine docker
      - [Alpine docker use ](https://github.com/gliderlabs/docker-alpine/blob/master/docs/usage.md)
      - [Containerizing nginx + PHP FPM on Alpine Linux](https://levelup.gitconnected.com/containerizing-nginx-php-fpm-on-alpine-linux-953430ea6dbc)
   - NGINX
      - [Ngninx Common Configuration Files](https://www.youtube.com/watch?v=MP3Wm9dtHSQ)
      - [Nginx location](https://www.digitalocean.com/community/tutorials/nginx-location-directive)
      - [Nginx Wordpress](https://www.nginx.com/resources/wiki/start/topics/recipes/wordpress/)
   - SSL /  TLS
      - [SSL C'est quoi ?](https://www.youtube.com/watch?v=7W7WPMX7arI)
      - [Configure Self-Signed SSL For Nginx Docker From A Scratch](https://codingwithmanny.medium.com/configure-self-signed-ssl-for-nginx-docker-from-a-scratch-7c2bcd5478c6)
      - [Dockerizing Wordpress with Nginx and PHP-FPM on Ubuntu](https://www.howtoforge.com/tutorial/dockerizing-wordpress-with-nginx-and-php-fpm/)
   - Docker compose
      - [Documentation docker-compose.ylm](https://docs.docker.com/compose/compose-file/compose-file-v3/#bridge)
      - [ENTRYPOINT (cannot be otherwritten with CLI) vs CMD (can be overidden with CLI)](https://devtron.ai/blog/cmd-and-entrypoint-differences//)
   - MariaDb
      - [docker-compose.yml documentation](https://docs.docker.com/compose/compose-file/)
      - [Liste éléments de correction](https://github.com/mharriso/school21-checklists/blob/master/ng_3_inception.pdf)
   - FTP
      - [How to install an FTP Server on Ubuntu 22.04 with VSFTPD - YouTube](https://www.youtube.com/watch?v=XNjOSY-wcb0&t=379s)
