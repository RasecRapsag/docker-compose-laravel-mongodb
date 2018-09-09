up:
	clear
	@docker-compose up -d

down:
	clear
	@docker-compose down

restart:
	clear
	@docker-compose restart

ps:
	clear
	@docker-compose ps

logs:
	clear
	@docker-compose logs -f

console:
	clear
	@docker exec -ti console /bin/sh
