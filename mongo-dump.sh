#!/bin/bash

# MONGO_URIs for both sources
source_mongo_uri_1=$1
source_mongo_uri_2=$2

# Temporary dump directories
source_dump_one="source_dump_one"
source_dump_two="source_dump_two"

echo "Dumping data from source clusters"

mongodump --uri "$source_mongo_uri_1" --out "$source_dump_one/db"
mongodump --uri "$source_mongo_uri_2" --out "$source_dump_two/db"

echo "Dumping data complete..."