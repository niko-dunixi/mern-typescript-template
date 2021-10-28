.PHONY: up
up:
	docker compose up --detach
	-docker compose logs --follow

.PHONY: down
down:
	docker compose down
	docker compose rm
	docker volume ls --format '{{- .Name -}}' | grep -e "^$(notdir $(PWD))" | xargs docker volume rm
