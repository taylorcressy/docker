#!/bin/bash

DATA_DIR=/data/psql/
mkdir -p $DATA_DIR
docker volume create --name psqlvol-tcressy --opt device=$DATA_DIR --opt o=bind
docker build . -t tcressy/postgres