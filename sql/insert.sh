#! /bin/bash

#PATH TO DATABASE FOLDER
export PGFOLDER=/tmp/$LOGNAME

#PATH TO DATA FOLDER
export PGDATA=$PGFOLDER/myDB/data

#DATABASE LISTENING PORT
export PGPORT=7432

#DBNAME
export DBNAME=flightDB

#SQL SCRIPT
script=queries.sql

psql -h 127.0.0.1 -p $PGPORT $DBNAME < $script
