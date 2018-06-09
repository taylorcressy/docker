#!/bin/bash

# Remove existing docker if exists
docker kill postgres-tcressy
docker rm postgres-tcressy

# Run docker for first time
docker run -p 5432:5432 -p 5000:5000 --name postgres-tcressy \
    --env-file ./env-file \
    --mount source=psqlvol-tcressy,target=/var/lib/pgsql \
    tcressy/postgres