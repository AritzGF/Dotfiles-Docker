#!make
ifneq (,$(wildcard ./.env))
	include .env
	export
else
$(error No se encuentra el fichero .env)
endif

start:
	docker compose up -d