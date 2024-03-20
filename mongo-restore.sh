#!/bin/bash

# Local MongoDB connection string for restoring data
mongo_uri="mongodb://localhost:27018/"

echo "Restoring data to local mongoos ..."

mongorestore --uri="$mongo_uri" --dir="dump"

echo "Data transfer completed."

# Clean up temporary files
echo "Cleaning up dump dir..."

rm -r "dump"

echo "dump clean up compeleted..."