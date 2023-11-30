# MongoDB Data Dump and Restoration

This project facilitates the transfer of data from live MongoDB clusters to local MongoDB containers while maintaining persistent data volumes. The need for managing two clusters and containers arises from simultaneous involvement in distinct projects.


## Prerequisites
To execute the processes seamlessly, ensure the installation of the Makefile tool, allowing streamlined command invocation. Alternatively, execute the shell scripts using the following guidelines:

- [Makefile](https://stackoverflow.com/questions/2532234/how-to-run-a-makefile-in-windows)

### Run
Before executing the scripts, make sure you have the `mongo:latest` image available in your Docker Desktop, and Docker Desktop is active.

#### Execution steps


Having Makefile?

```bash
make mongo
```

OR

Execute the following steps in sequence:

#### 1. Dump Live Data: 
```bash
./mongo-dump.sh "source_mongo_uri_1" "source_mongo_uri_2"
```

#### 2. Run Local MongoDB Containers: 
```bash
./mongo-local-run.sh
```

#### 3. Restore Data:  
```bash
./mongo-restore.sh
```
