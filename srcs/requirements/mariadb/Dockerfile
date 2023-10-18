FROM debian:bullseye

ARG DB_NAME=datab
ARG USER_NAME=marie
ARG ROOT_MDP=rooty
ARG USER_MDP=mama

RUN apt update -y && \
	apt upgrade -y &&\
	apt install mariadb-server -y &&\
	mysql_install_db

RUN service mariadb start &&\
	mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME}; \
	ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_MDP}'; \
	CREATE USER '${USER_NAME}'@'%' IDENTIFIED BY '${USER_MDP}'; \
	GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${USER_NAME}'@'%' IDENTIFIED BY '${USER_MDP}'; \
	FLUSH PRIVILEGES;"

ENTRYPOINT ["mysqld_safe", "--bind-address=*"]





