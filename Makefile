all: up

up :	
	cd srcs && sudo service docker restart \
	&& sudo docker compose -f docker-compose.yml build \
	&& sudo docker compose -f docker-compose.yml up -d

down :
	cd srcs && sudo docker compose -f docker-compose.yml down

clean: 
	cd srcs && sudo docker compose -f docker-compose.yml down \
	&& sudo docker system prune --force

fclean:	
	cd srcs && sudo docker compose -f docker-compose.yml down \
	&& sudo docker system prune -a --force \
	&& sudo rm -Rf /home/naben-za/data/*

re:	clean up

container-ps:
	sudo docker container ps -a

nginx:
	sudo docker exec -it nginx bash -l

mariadb:
	sudo docker exec -it mariadb bash -l

wordpress:
	sudo docker exec -it wordpress bash -l

config:
	cd srcs && sudo docker compose config

.PHONY: up down re clean clean-all show nginx mariadb wordpress config \
delete volume_show volume_delete \ 