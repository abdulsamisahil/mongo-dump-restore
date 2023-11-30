# mongo-dump-restore
dumping live clusters to local mongo containers with persisting data volumes


#### Prerequisites
Make sure you have the following Makefile tool installed to invoke everything with command, or just execute the shell scripts as shown in below RUN:
- [Makefile](https://stackoverflow.com/questions/2532234/how-to-run-a-makefile-in-windows)

### Run
Prior to running the scripts, ensure you've `mongo:latest` image pulled in your `Docker Desktop` and have the docker desktop opened and running. 

```bash
make mongo


# OR

# STEP 1
./mongo-dump.sh "source_mongo_uri_1" "source_mongo_uri_2"

# STEP 2
./mongo-local-run.sh

# STEP 3
./mongo-restore.sh
```
