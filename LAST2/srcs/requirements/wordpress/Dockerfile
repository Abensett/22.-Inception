# See nginx and Mariadb for more explanation

FROM debian:buster

RUN apt-get update && apt-get upgrade -y

# Wordpress Installation
RUN apt-get -y install wget

# PHP Installation
RUN apt-get install -y  php7.3\
	                    php-fpm\
	                    php-mysql\
	                    mariadb-client

# download wordpress in /var/www  -P to specify the path
RUN wget https://wordpress.org/wordpress-6.0.tar.gz -P /var/www

# extract the archive and delete the archive file
RUN cd /var/www && tar -xzf wordpress-6.0.tar.gz && rm wordpress-6.0.tar.gz

# grant root the right to write wordpress folder  -R to apply to all subfolders (RECURSIVE)
RUN	chown -R root:root /var/www/wordpress

#  WP-CLI (outil de ligne de commandes = terminal useful for config of host, password etc)
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# grant cli the right to execute the file
RUN chmod +x wp-cli.phar
# move the program to wordpress folder
RUN mv wp-cli.phar /usr/local/bin/wp

# copy config files from host to container
COPY	./conf/www.conf	/etc/php/7.3/fpm/pool.d/www.conf
COPY	./tools/wp_auto_config.sh wp_auto_config.sh

# execute script to configure wordpress
ENTRYPOINT ["bash", "wp_auto_config.sh"]