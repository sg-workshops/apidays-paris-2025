#!/usr/bin/bash


# This scripts restarts dvapi docker file

ME=$(basename $0 .sh)

docker compose -f $ME/docker-compose.yml -p $ME down -v
docker compose -f $ME/docker-compose.yml -p $ME up -d
