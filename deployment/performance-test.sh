#!/usr/bin/env bash

# Root UR
rootUrl=http://localhost:1998
# Number of users in parallel
user=10
# Numer of queries
nb=20
while getopts ":url:u:n:" opt; do
  case $opt in
  url)
    rootUrl="$OPTARG"
    ;;
  u)
    user="$OPTARG"
    ;;
  n)
    nb="$OPTARG"
    ;;
  \?)
    echo "Usage : ./performance-test.sh [-url url test][-c test count]"
    ;;
  esac
done

url=$rootUrl
echo "Test : '$url'"
artillery quick --count $user -n $nb $url

url=$rootUrl/exercises
echo "Test : '$url'"
artillery quick --count $user -n $nb $url

url=$rootUrl/admin
echo "Test : '$url'"
artillery quick --count $user -n $nb $url
