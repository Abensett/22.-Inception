# **************************************************************************** #
#                               COLORS / DESIGN	                               #
# **************************************************************************** #


GREEN		= \033[32;1m
RED		= \033[31;1m
YELLOW		= \033[33;1m
CYAN		= \033[36;1m
RESET		= \033[0m
WHITE 		= \033[0;m
CLEAR		= \033[2K\r


# **************************************************************************** #
#                               PROJECT VARIABLES                              #
# **************************************************************************** #

PROJECT_NAME		 		 = Inception
HOME_PATH  			 		 = /home/abensett/data
DOCKER_COMPOSE_PATH   		 = ./srcs/docker-compose.yml
DOCKER_COMPOSE_CMD   		 = docker-compose -f $(DOCKER_COMPOSE_PATH)
NAME = Inception

all: create_local_directories  reload

create_local_directories:
			@sudo mkdir -p ${HOME_PATH} \
			${HOME_PATH}/mariadb \
			${HOME_PATH}/wordpress\
			${HOME_PATH}/static \

reload:
	@ $(DOCKER_COMPOSE_CMD) up -d --build


nginx:
	@ $(DOCKER_COMPOSE_CMD) exec nginx sh

mariadb:
	@ $(DOCKER_COMPOSE_CMD) exec mariadb bash

wordpress:
	@ $(DOCKER_COMPOSE_CMD) exec wordpress bash

adminer:
	@ $(DOCKER_COMPOSE_CMD) exec  adminer sh
redis:
	@ $(DOCKER_COMPOSE_CMD) exec  redis sh
ftp:
	@ $(DOCKER_COMPOSE_CMD) exec  ftp sh
static:
	@ $(DOCKER_COMPOSE_CMD) exec  static sh

logs:
	@ $(DOCKER_COMPOSE_CMD) logs -f --tail=5

linux:
	@ sudo echo "127.0.0.1 abensett.42.fr" >> /etc/hosts

stop:
	@ docker compose -f  $(DOCKER_COMPOSE_PATH) stop

clean: stop
	@ docker compose -f $(DOCKER_COMPOSE_PATH) down -v

fclean: clean
	@ rm -rf ${HOME_PATH}
	@ docker system prune -af

re: fclean all

.PHONY: linux stop clean prune reload all
