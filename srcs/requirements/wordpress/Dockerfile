FROM debian:bullseye

RUN apt update -y && apt upgrade -y &&\
	apt install mariadb-client php-fpm php-mysql curl -y &&\
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar &&\
	chmod +x wp-cli.phar &&\
	mv wp-cli.phar /usr/local/bin/wp &&\
	mkdir -p /var/www/html &&\
	chown -R www-data:www-data /var/www/html &&\
	chmod 755 /var/www/html

COPY tools/www.conf /etc/php/7.4/fpm/pool.d/www.conf

RUN wp core download --allow-root --path=/var/www/html --locale=fr_FR

COPY tools/launch_wp.sh /tmp/launch_wp.sh

ENTRYPOINT ["bash", "/tmp/launch_wp.sh"]