# This time I use debian, see nginx for alpine image

FROM debian:buster

# Install mariadb
RUN apt update; \
    apt install -y mariadb-server

# Copy config files from host to container
COPY ./conf/mariadb_personnal.cnf           /etc/mysql/mariadb.conf.d/
COPY ./tools/mariadb_installation.sh	/

# execute script to install and configure mariadb
ENTRYPOINT ["bash", "mariadb_auto_config.sh"]

# Expose port 3306 only port allowed
EXPOSE 3306