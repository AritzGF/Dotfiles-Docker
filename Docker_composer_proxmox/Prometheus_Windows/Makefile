#!make

ifneq (,$(wildcard ./.env))
	include .env
	export
else
$(error No se encuentra el fichero .env)
endif

start:
	mkdir -p $(Prometheusconf)
	envsubst < prometheus.yml > ./$(Prometheusconf)/prometheus.yml
	docker-compose up -d
