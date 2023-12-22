docker exec -it $(docker ps -f name=db -q) psql -U postgres -d postgres
