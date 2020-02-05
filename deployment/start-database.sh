#!/usr/bin/env bash

port=5432
name=crecer_juntos

while getopts ":f:p:n" opt; do
  case $opt in
  f)
    filepath="$OPTARG"
    ;;
  p)
    port="$OPTARG"
    ;;
  n)
    name="$OPTARG"
    ;;
  \?)
    echo "Usage : "
    echo "./start-database.sh Default, launch sql database container with local data or new database. "
    echo "./start-database.sh -f filepath will launch sql database container with databasedump in filepath"
    echo "./start-database.sh -p port set a custom port for database service, default is 5432"
    echo "./start-database.sh -n name set a custom name of the docker image"
    ;;
  esac
done

echo "Dump is in $filepath"

dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
script_path="${dir}/init.sql"

# Launch database container
echo "Checking if database already launched."
if nc -zvw3 localhost 5432 && true || false; then
  echo "Postgres default port already taken. Assuming database was launched"
else
  echo "Let's start the database"
  echo "Making sure no existing container with the wished name"
  docker ps -a --filter "name=$name" | grep -q . && docker stop "$name" && docker rm "$name"
  echo "Pulling Postgres docker"
  docker pull postgres:9.5
  echo "Launching docker"
  docker run --name "$name" -e POSTGRES_PASSWORD=docker -d -p "$port":"$port" -v "$HOME"/docker/volumes/postgres:/var/lib/postgresql/data postgres:9.5
  sleep 4
fi

# Check database was created and if not, create it
if [[ -z $filepath ]]; then
  echo "Initializing db from scratch"
  echo "Copy to docker initialization script of file ${script_path}"
  docker cp "${script_path}" "$name":/init.sql
  echo "Apply initialization script if database does not exist"
  docker exec "$name" psql -U postgres -tc "SELECT 1 FROM pg_database WHERE datname = 'cs_courses'" | grep -q 1 || docker exec $name psql -U postgres -f init.sql
else
  echo "Initializing db from database dump in $filepath"
  echo "Remove previous database"
  docker exec "$name" psql -U postgres -tc "DROP DATABASE cs_courses;"
  echo "Copy to docker initialization script of file ${script_path}"
  docker cp "${script_path}" "$name":/init.sql
  echo "Apply initialization script"
  docker exec "$name" psql -U postgres -f init.sql
  echo "Copy to docker database dump file $filepath"
  docker cp "$filepath" "$name":/dump.sql
  echo "Use database dump"
  docker exec "$name" psql -U postgres -d cs_courses -f dump.sql
fi
