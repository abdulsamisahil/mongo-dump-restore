#!/bin/bash

container_name=$1
# Run mongo latest in a docker container
docker run -d -p 27018:27017 --name "$container_name" -v local/data/db mongo:latest
