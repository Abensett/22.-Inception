
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

NAME = Inception

all: fclean reload

create_local_directories:
	mkdir -p ${HOME_PATH}/data/mariadb\
			${HOME_PATH}/data/wordpress\

linux:
	@ echo "127.0.0.1 abensett.42.fr" >> /etc/hosts
	
stop:
	@ docker-compose -f srcs/docker-compose.yml down

clean: stop
	@ rm -rf ~/Desktop/inception

fclean: clean
	@ docker system prune -f

reload: 
	@ docker-compose -f srcs/docker-compose.yml up --build

.PHONY: linux stop clean prune reload all
