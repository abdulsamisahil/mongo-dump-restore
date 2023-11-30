# Makefile for shell scripts execution order
mongo: 
	bash mongo-local-run.sh && \
		bash mongo-dump.sh && \
			bash mongo-restore.sh
