#!/usr/bin/env sh

# Launch database container
if lsof -Pi :5432 -sTCP:LISTEN -t >/dev/null ; then
    echo "Postgres default port already taken. Assuming database was launched"
else
    echo "Launching Postgres docker"
    docker pull postgres:9.5
    docker run -e POSTGRES_PASSWORD=docker -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres:9.5
    sleep 4
fi

# Check database was created and if not, create it
psql -h localhost -U postgres -tc "SELECT 1 FROM pg_database WHERE datname = 'cs_courses'" | grep -q 1 || psql -h localhost -U postgres -d postgres -f ../database/init.sql