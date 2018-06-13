#!/bin/bash

# Run docker for first time
docker run -p 5432:5432 --name postgres-tcressy \
    --env-file ./env-file \
    -v psql5vol-tcressy:/var/lib/pgsql \
    tcressy/postgres
