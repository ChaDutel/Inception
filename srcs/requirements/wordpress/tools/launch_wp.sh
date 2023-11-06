#!/bin/bash

cd /var/www/html
if ! wp core is-installed --allow-root
then
	sleep 5
	wp config create --allow-root --dbname=${DB_NAME} --dbuser=${USER_NAME} --dbpass=${USER_MDP} --dbhost=mariadb
	wp core install --allow-root --url=cdutel-l.42.fr --title=Inception --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_MDP} --admin_email=${WP_ADMIN_MAIL}
	wp user create --allow-root ${WP_USER_NAME} ${WP_USER_MAIL} --user_pass=${WP_USER_MDP}
fi
mkdir -p /run/php
php-fpm7.4 -F