#!make

ifneq (,$(wildcard ./.env))
	include .env
	export
else
$(error No se encuentra el fichero .env)
endif

start:
	mkdir -p ./$(HomerConf)
	docker compose up -d
	rm ./$(HomerConf)/config.yml
	envsubst < config.yml > ./$(HomerConf)/config.yml
