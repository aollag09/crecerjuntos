#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
SCRIPT_PATH="${DIR}/init.sql"

# Launch database container
echo "Checking if database already launched."
if nc -zvw3 localhost 5432 && true || false; then
  echo "Postgres default port already taken. Assuming database was launched"
else
  echo "Making sure no existing container with the wished name"
  docker ps -a --filter "name=crecer_juntos" | grep -q . && docker stop crecer_juntos && docker rm crecer_juntos
  echo "Pulling Postgres docker"
  docker pull postgres:9.5
  echo "Launching docker"
  docker run --name crecer_juntos -e POSTGRES_PASSWORD=docker -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres:9.5
  sleep 4
fi

# Check database was created and if not, create it
echo "Copy to docker initialization script of file ${SCRIPT_PATH}"
docker cp "${SCRIPT_PATH}" crecer_juntos:/init.sql
echo "Apply initialization script if database does not exist"
docker exec crecer_juntos psql -U postgres -tc "SELECT 1 FROM pg_database WHERE datname = 'cs_courses'" | grep -q 1 || docker exec crecer_juntos psql -U postgres -f init.sql
