#!/bin/bash

# start mariadb service
service mysql start;

# create database and user
mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
# grant privileges to SQL_USER on database with password SQL_PASSWORD
mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
# change root rights with password SQL_ROOT_PASSWORD
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"

# flush privileges to apply changes
mysql -e "FLUSH PRIVILEGES;"

# restart mariadb service
mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown

# mysqld_safe startup script is in MariaDB with extra safety features (recommanded)
exec mysqld_safe
