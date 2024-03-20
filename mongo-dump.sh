#!/bin/bash

# MONGO_URI
mongo_uri=$1

echo "Dumping data from source cluster"

mongodump --uri="$mongo_uri" --out="dump"

echo "Dumping data complete..."