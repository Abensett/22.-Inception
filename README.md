# Inception

## Table of contents
* [Requirements](#Requirements)  
* [Part 2](#Reinterpretation-types)  
* [Sitographie](#Reinterpretation-types)  

## Requirements
>  Each docker must have its own ```Dockerfile```, those files are called by a ```docker-compose.yml``` in a Makefile.  

- [ ]  A docker : NGINX (with only TLSv1.2 or TLSv2.3)
- [ ]  A docker : WordPress + php-fpm
- [ ]  A docker : MariaDB
- [ ]  A volume : WordPress database
- [ ]  A volume : WordPress Files
- [ ]  A docker-network that links the containers

- [ ] Dockers must restart if a crash happens
- [ ] 2 users in WP database : one is Admin (without Admin in the pseudo)
<img src="https://user-images.githubusercontent.com/85625233/194904961-6914bc5b-d72f-410a-9f20-eb2004fbd8bb.png" width="500"/> 





## Sitographie
