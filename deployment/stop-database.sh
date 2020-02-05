#!/usr/bin/env bash

name=crecer_juntos

while getopts "n:" opt; do
  case $opt in
  n)
    name="$OPTARG"
    ;;
  \?)
    echo "Usage : "
    echo "./stop-database.sh Default, stop the docker with default name"
    echo "./stop-database.sh -n name stop the docker with a specific name"
    ;;
  esac
done

echo "Stop PostgreSQL Docker image"
docker ps -a --filter "name=$name" | grep -q . && docker stop $name && docker rm $name
