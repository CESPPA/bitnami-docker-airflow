export COMPOSE_FILE = docker-compose-inspectiv.yml

.PHONY: config
config:
	docker-compose config

.PHONY: build
build:
	docker-compose build

.PHONY: up
up:
	docker-compose up -d

.PHONY: logs
logs:
	docker-compose logs -f --tail=20

.PHONY: stop
stop:
	docker-compose stop

.PHONY: push
push:
	docker-compose push

.PHONY: down
down:
	docker-compose down -v --rmi=local --remove-orphans
