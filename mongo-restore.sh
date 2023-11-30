#!/bin/bash

# Local MongoDB connection strings for restoring data
source_one_mongo_local="mongodb://localhost:27017/db"
source_two_mongo_local="mongodb://localhost:27018/db"

# Temporary dump directories
source_dump_one="source_dump_one"
source_dump_two="source_dump_two"

echo "Restoring data to local mongoos ..."

mongorestore --uri "$source_one_mongo_local"  --dir "$source_dump_one/db"
mongorestore --uri "$source_two_mongo_local" --dir "$source_dump_two/db"

# Clean up temporary files
echo "Cleaning up dump dirs..."
rm -r "$source_dump_one" "$source_dump_two"

echo "Data transfer completed."