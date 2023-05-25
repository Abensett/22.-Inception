# 22.-Inception
Ce projet a pour but d’approfondir vos connaissances en vous faisant utiliser Docker. Vous allez virtualiser plusieurs images Docker en les créant dans votre nouvelle machine virtuelle personnelle.

# Inception

## Table of contents

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
