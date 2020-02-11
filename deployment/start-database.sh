#!/usr/bin/env bash

port=5432
name="crecer_juntos"
volume="$HOME/docker/volumes/postgres:/var/lib/postgresql/data"
dbname="cs_courses"

while getopts "f:p:n:v:d:" opt; do
  case $opt in
  f) filepath="$OPTARG" ;;
  p) port="$OPTARG" ;;
  n) name="$OPTARG" ;;
  v) volume="$OPTARG" ;;
  d) dbname="$OPTARG" ;;
  \?)
    echo "Usage : "
    echo "./start-database.sh Default, launch sql database container with local data or new database. "
    echo "./start-database.sh -f filepath will launch sql database container with databasedump in filepath"
    echo "./start-database.sh -p port set a custom port for database service, default is 5432"
    echo "./start-database.sh -n name set a custom name of the docker image"
    echo "./start-database.sh -v path set a custom volume of the docker image"
    echo "./start-database.sh -d name set a custom name for the database"
    exit 0
    ;;
  esac
done

echo "**** Start Database with options *****"
echo "Docker Image name :   $name"
echo "Docker DB Port :      $port"
echo "Docker Volume :       $volume"
echo "Database Name :       $dbname"
echo "Dump location :       $filepath"
echo "**************************************"

dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

# Launch database container
echo "Checking if database already launched."
if nc -zvw3 localhost "$port" && true || false; then
  echo "Postgres default port already taken. Assuming database was launched"
else
  echo "Let's start the database"
  echo "Making sure no existing container with the wished name"
  docker ps -a --filter "name=$name" | grep -q . && docker stop "$name" && docker rm "$name"
  echo "Pulling Postgres docker"
  docker pull postgres:9.5
  echo "Launching docker"
  docker run --name "$name" -e POSTGRES_PASSWORD=docker -d -p "$port":"$port" -v "$volume" postgres:9.5
  sleep 4
fi

# Check database was created and if not, create it
if [[ -z $filepath ]]; then
  echo "Initializing db from scratch"
  docker exec "$name" psql -U postgres -tc "SELECT 1 FROM pg_database WHERE datname = '$dbname'" | grep -q 1 || docker exec "$name" psql -U postgres -tc "CREATE DATABASE $dbname;" && docker exec "$name" psql -U postgres -tc "grant all privileges on database $dbname to postgres;"
else
  echo "Initializing db from database dump in $filepath"
  echo "Remove previous database"
  docker exec "$name" psql -U postgres -tc "DROP DATABASE $dbname;"
  echo "Initializing db from scratch"
  docker exec "$name" psql -U postgres -tc "SELECT 1 FROM pg_database WHERE datname = '$dbname'" | grep -q 1 || docker exec "$name" psql -U postgres -tc "CREATE DATABASE $dbname;" && docker exec "$name" psql -U postgres -tc "grant all privileges on database $dbname to postgres;"
  echo "Copy to docker database dump file $filepath"
  docker cp "$filepath" "$name":/dump.sql
  echo "Use database dump"
  docker exec "$name" psql -U postgres -d "$dbname" -f dump.sql
fi
