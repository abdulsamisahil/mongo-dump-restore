# mongo-dump-restore
dumping live clusters to local mongo containers with persisting data volumes


#### Prerequisites
Make sure you have the following Makefile tool installed or just execute the shell scripts:
- [Makefile](https://stackoverflow.com/questions/2532234/how-to-run-a-makefile-in-windows)

### Run
```bash
make mongo
# OR
./mongo-dump.sh "first_source_mongo_uri" "second_source_mongo_uri"
# etc
```
