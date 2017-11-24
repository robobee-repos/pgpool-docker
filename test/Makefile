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
	sudo rm -rf root

setup:
	for p in pgconf postgres/primary postgres/replica; do \
	mkdir -p root/$$p; \
	chmod o+rwX root/$$p ; \
	done
.PHONY: setup
