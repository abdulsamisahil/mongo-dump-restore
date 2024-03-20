# Makefile for shell scripts execution order
mongo: 
	bash mongo-local-run.sh $(CONTAINER_NAME) && \
		bash mongo-dump.sh $(MONGO_URI) && \
			bash mongo-restore.sh
