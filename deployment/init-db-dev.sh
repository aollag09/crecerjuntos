#!/usr/bin/env bash

if [[ -v "${GITHUB_WORKSPACE}" ]]; then
  SCRIPT_PATH="${GITHUB_WORKSPACE}/database/init.sql"
else
  SCRIPT_PATH="../database/init.sql"
fi

# Launch database container
if lsof -Pi :5432 -sTCP:LISTEN -t >/dev/null ; then
    echo "Postgres default port already taken. Assuming database was launched"
else
    echo "Making sure no existing container with the wished name"
    docker ps -q --filter "name=crecer_juntos" | grep -q . && docker stop crecer_juntos && docker rm crecer_juntos
    echo "Pulling Postgres docker"
    docker pull postgres:9.5
    echo "Launching docker"
    docker run --name crecer_juntos -e POSTGRES_PASSWORD=docker -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres:9.5
    sleep 4
fi

# Check database was created and if not, create it
echo "Applying initialization script of file ${SCRIPT_PATH}"
docker exec crecer_juntos psql -U postgres -tc "SELECT 1 FROM pg_database WHERE datname = 'cs_courses'" | grep -q 1 || docker exec crecer_juntos psql -U postgres -f "${SCRIPT_PATH}"