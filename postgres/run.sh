#!/bin/bash

if [ -z $1 ]; then
    echo "Must specify a volume mount"
    exit 1
fi

# Run docker for first time
docker run -p 5432:5432 \
    --name postgres-tcressy \
    --env-file ./env-file \
    -v ${1}:/var/lib/pgsql \
    tcressy/postgres
