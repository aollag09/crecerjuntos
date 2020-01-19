#!/usr/bin/env sh

docker pull postgres:9.5
docker run -e POSTGRES_PASSWORD=docker -d -p 5432:5432 postgres:9.5
sleep 4
psql -h localhost -U postgres -d postgres -f ../database/init.sql
