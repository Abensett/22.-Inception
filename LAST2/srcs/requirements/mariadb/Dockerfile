# This time I use debian, see nginx for alpine image

FROM debian:buster

# Install mariadb
RUN apt update && \
    apt upgrade -y && \
    apt install -y mariadb-server

# Copy config files from host to container
COPY ./conf/mariadb_personnal.cnf     /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/mariadb_auto_config.sh	/

# execute script to install and configure mariadb
ENTRYPOINT ["bash", "mariadb_auto_config.sh"]

# Expose port 3306 only port allowed
EXPOSE 3306
