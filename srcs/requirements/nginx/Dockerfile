FROM debian:bullseye

EXPOSE 443

RUN apt update -y && apt upgrade -y \
	&& apt install openssl -y \
	&& apt install nginx -y \
	&& openssl req -x509 -nodes -newkey rsa:4096 -keyout /etc/ssl/private/mykmouse.key -out /etc/ssl/certs/mycertif.crt -subj /C=FR

COPY tools/default /etc/nginx/sites-available/inceptserv

RUN ln -s /etc/nginx/sites-available/inceptserv /etc/nginx/sites-enabled/inceptserv

ENTRYPOINT ["nginx", "-g", "daemon off;"]