# 重启所有服务
restart:
	docker-compose down
	docker rmi codepzj/stellux-server:latest || true
	docker rmi codepzj/stellux-admin:latest || true
	docker rmi codepzj/stellux-web:latest || true
	docker-compose up -d

# 更新web
web:
	docker-compose down
	docker rmi codepzj/stellux-web:latest || true
	docker-compose up -d

# 更新server
server:
	docker-compose down
	docker rmi codepzj/stellux-server:latest || true
	docker-compose up -d

# 更新admin
admin:
	docker-compose down
	docker rmi codepzj/stellux-admin:latest || true
	docker-compose up -d