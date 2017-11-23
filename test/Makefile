include ../utils/Makefile.help
include ../utils/Makefile.functions

NAME := pgpool

test: setup ##@targets Starts test containers.
	docker-compose -p $(NAME) -f test.yaml up
.PHONY: up

stop: ##@targets Stops test containers.
	docker-compose -p $(NAME) -f test.yaml stop

rm: stop ##@targets Stops test containers.
	docker-compose -p $(NAME) -f test.yaml rm -f

clean: stop rm ##@targets Removes docker containers and created files.
	sudo chown `id -u`.`id -g` -R ./pgpool-in
	sudo rm -rf root

setup:
	sudo chmod o+rwX -R ./pgpool-in
	for p in gitea postgres/primary postgres/replica; do \
	mkdir -p root/$$p; \
	chmod o+rwX root/$$p ; \
	done
.PHONY: setup
