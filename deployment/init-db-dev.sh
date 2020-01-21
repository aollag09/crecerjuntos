#!/usr/bin/env sh
docker pull postgres:9.5
docker run -e POSTGRES_PASSWORD=docker -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres:9.5
sleep 4