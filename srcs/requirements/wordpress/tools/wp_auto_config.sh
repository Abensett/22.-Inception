
# to be sur that mariadb is started
sleep 10

# if wp-config.php does not exist, create it
# --allow-root is needed to avoid error message
if [ ! -e /var/www/wordpress/wp-config.php ]; then
    wp config create	--allow-root \
                        --dbname=$SQL_DATABASE \
                        --dbuser=$SQL_USER  \
                        --dbpass=$SQL_PASSWORD \
    					--dbhost=mariadb:3306 --path='/var/www/wordpress'

sleep 10
# avoid filling first Wordpress page 
# install wordpress with wp-cli and create admin user
wp core install     --url=$DOMAIN_NAME --title=$SITE_TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root --path='/var/www/wordpress'

# add user with wp-cli
wp user create      --allow-root --role=author $USER_LOGIN $USER_MAIL --user_pass=$USER_PASS --path='/var/www/wordpress' >> /log.txt
fi


# if folder /run/php does not exist create
if [ ! -d /run/php ]; then
    mkdir ./run/php
fi

# lauch php-fpm7.3
/usr/sbin/php-fpm7.3 -F