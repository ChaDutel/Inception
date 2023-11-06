all:
	docker compose -f srcs/docker-compose.yml up -d

logs: 
	docker compose -f  srcs/docker-compose.yml logs

clean:
	docker compose -f srcs/docker-compose.yml down -v

fclean:	clean
	sudo rm -rf /home/cdutel-l/data/mariadbData/*
	sudo rm -rf /home/cdutel-l/data/wordpressData/*
	docker rmi mariadb:custom
	docker rmi nginx:custom
	docker rmi wordpress:custom

re: fclean all

.PHONY: all clean fclean re
	