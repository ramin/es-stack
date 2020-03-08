DOCKER_COMPOSE_ENV_FILE=docker-compose.yml

default: start

.PHONY: start
start:
	docker-compose -f $(DOCKER_COMPOSE_ENV_FILE) up --build

.PHONY: stop
stop:
	docker-compose -f $(DOCKER_COMPOSE_ENV_FILE) down

.PHONY: reset
reset: stop \
	erase

.PHONY: erase
erase: erase_logs \
	erase_data

.PHONY: erase_logs
erase_logs:
	rm -rf ./.logs/

.PHONY: erase_data
erase_data:
	rm -rf ./.data/
