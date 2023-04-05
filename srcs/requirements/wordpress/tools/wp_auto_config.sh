#!bin/bash
sleep 10
if [ ! -e /var/www/wordpress/wp-config.php ]; then
    wp config create	--allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD \
    					--dbhost=mariadb:3306 --path='/var/www/wordpress'

wp core install     --url=$DOMAIN_NAME --title=$SITE_TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root --path='/var/www/wordpress'
wp user create      --allow-root --role=author $USER1_LOGIN $USER1_MAIL --user_pass=$USER1_PASS --path='/var/www/wordpress' >> /log.txt


### BONUS : REDIS CONFIG ###

# root user on VM
wp config set WP_REDIS_HOST redis --allow-root --path='var/www/wordpress/'
# port 6379 is the default port for redis
wp config set WP_REDIS_PORT 6379 --raw --allow-root --path='var/www/wordpress/'
# the domain name is used as the salt
wp config set WP_CACHE_KEY_SALT $DOMAIN_NAME --allow-root --path='var/www/wordpress/'
# use phpredis client
wp config set WP_REDIS_CLIENT phpredis --allow-root --path='var/www/wordpress/'
# install redis-cache plugin
wp plugin install redis-cache --activate --allow-root --path='var/www/wordpress/'
wp plugin update --all --allow-root --path='var/www/wordpress/'
wp redis enable --allow-root --path='var/www/wordpress/'


fi


# if /run/php folder does not exist, create it
if [ ! -d /run/php ]; then
    mkdir ./run/php
fi

# launch php-fpm7.3
# -F : run in foreground (not in daemon mode) and log to stdout
/usr/sbin/php-fpm7.3 -F
