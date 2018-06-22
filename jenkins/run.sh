#!/bin/bash

if [ -z $1 ]; then 
    echo "Please specify a volume name"
    exit 1
fi

docker run -p 8080:8080 \
    --name jenkins-tcressy \
    -v ${1}:/var/lib/jenkins/ \
    tcressy/jenkins