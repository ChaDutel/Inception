all:
	docker-compose -f srcs/docker-compose.yml up -d

clean:
	docker-compose -f srcs/docker-compose.yml down -v

fclean:	clean
	rm -rf /Users/charline/cdutel-l/data/mariadbData/*

re: fclean all

.PHONY: all clean fclean re
	