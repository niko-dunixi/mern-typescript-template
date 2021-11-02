.PHONY: up
up:
	docker compose up --detach
	-docker compose logs --follow

.PHONY: down
down:
	docker compose down
	docker compose rm

.PHONY: clean
clean: down
	docker volume ls --format '{{- .Name -}}' | grep -e "^$(notdir $(PWD))" | xargs docker volume rm
	[ ! -d client/node_modules ] || rm -rfv client/node_modules
	[ ! -d server/node_modules ] || rm -rfv server/node_modules
