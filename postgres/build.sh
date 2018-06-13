#!/bin/bash

docker volume create --name psqlvol-tcressy --driver local --opt type=nfs --opt o=addr=192.168.1.123,rw --opt device=:/home/nfs/psql/
docker build . -t tcressy/postgres
