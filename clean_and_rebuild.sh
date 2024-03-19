docker-compose down
docker system prune -a
docker volume prune -a
docker network prune
docker builder prune -a
docker-compose up -d