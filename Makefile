start:
	docker compose up

stop:
	docker compose down

start-background:
	docker compose up -d

shell:
	docker exec -ti prestashop /bin/bash
