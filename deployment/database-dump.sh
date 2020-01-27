#!/usr/bin/env bash

while getopts ":f:" opt; do
  case $opt in
  f)
    filepath="$OPTARG"
    ;;
  \?)
    echo "Usage : ./database-dump.sh [-f dump_output_filepath] if no option provided : dump.sql in current directory"
    ;;
  esac
done

if [[ -z $filepath ]]; then
  filepath="dump.sql"
fi

docker exec crecer_juntos pg_dump cs_courses -U postgres >$filepath
