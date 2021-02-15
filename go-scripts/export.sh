#!/bin/bash

# Copyright 2020 Philipp Engelke
# Feel free to use this! 

if [[ $# -ne 2 ]]; then
	echo "Usage: ${0##*/} <table name> <file name>"
	exit 1
fi

table=""${1}.csv"
file=$2
echo $file
#docker-compose exec db psql -U postgres -d bachelor -c "COPY ${table} TO STDOUT WITH CSV HEADER" > ${file}.csv

	