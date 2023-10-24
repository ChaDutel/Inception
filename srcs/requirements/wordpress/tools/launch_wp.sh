#!/bin/bash

cd /var/www/html
if ! wp core is-installed --allow-root
then
	sleep 5
	wp config create --allow-root --dbname=datab --dbuser=marie --dbpass=mama --dbhost=mariadb
	wp core install --allow-root --url=cdutel-l.42.fr --title=Inception --admin_user=wpboss --admin_password=wppass --admin_email=cdutel-l@student.42lyon.fr
	wp user create --allow-root paul paul@gmail.fr --user_pass=popaul
fi
mkdir -p /run/php
php-fpm7.4 -F