#!/bin/bash

# Run source one local mongo container
docker run -d -p 27017:27017 --name source_one_mongo_local -v source1/data/db mongo:latest

# Run source two local mongo container
docker run -d -p 27018:27017 --name source_two_mongo_local -v source2/data/db mongo:latest
