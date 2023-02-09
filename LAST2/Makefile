# **************************************************************************** #
#                               COLORS / DESIGN	                               #
# **************************************************************************** #


GREEN		= \033[32;1m
RED			= \033[31;1m
YELLOW		= \033[33;1m
CYAN		= \033[36;1m
RESET		= \033[0m
WHITE 		= \033[0;m
CLEAR		= \033[2K\r


# **************************************************************************** #
#                               PROJECT VARIABLES                              #
# **************************************************************************** #

PROJECT_NAME		   = Inception
HOME_PATH  			   = "./srcs/data"
DOCKER_COMPOSE_PATH    = "./srcs/docker-compose.yml"
DOCKER_COMPOSE_CMD     = docker-compose -f $(DOCKER_COMPOSE_PATH)

NAME = Inception

all: create_local_directories  reload

create_local_directories:
			mkdir -p ${HOME_PATH} \
			${HOME_PATH}/mariadb\
			${HOME_PATH}/wordpress\

reload:
	@ $(DOCKER_COMPOSE_CMD) up -d --build

nginx:
	@ $(DOCKER_COMPOSE_CMD) exec nginx sh

mariadb:
	@ $(DOCKER_COMPOSE_CMD) exec mariadb bash

wordpress:
	@ $(DOCKER_COMPOSE_CMD) exec wordpress bash

logs:
	@ $(DOCKER_COMPOSE_CMD) logs -f --tail=5

linux:
	@ echo "127.0.0.1 abensett.42.fr" >> /etc/hosts

stop:
	@ docker compose -f  $(DOCKER_COMPOSE_PATH) stop

clean: stop
	@ docker compose -f $(DOCKER_COMPOSE_PATH) down -v

fclean: clean
	@ rm -rf ${HOME_PATH}/Inception
	@ docker system prune -af

re: fclean all

.PHONY: linux stop clean prune reload all
