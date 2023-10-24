all:
	docker-compose -f srcs/docker-compose.yml up -d

logs: 
	docker-compose -f  srcs/docker-compose.yml logs

clean:
	docker-compose -f srcs/docker-compose.yml down -v

fclean:	clean
	rm -rf /Users/charline/cdutel-l/data/mariadbData/*
	rm -rf /Users/charline/cdutel-l/data/wordpress/*
	docker rmi mariadb:custom
	docker rmi nginx:custom
	docker rmi wordpress:custom

re: fclean all

.PHONY: all clean fclean re
	