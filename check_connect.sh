#!/usr/bin/bash

loop=1

# log file and location
log=~/check_connect.log

# Oracle service name
servicename=orcl

# Oracle node where listener is
oraclenode=edcvm

# Oracle port
oracleport=1521

while [ $loop -eq 1 ]; do
	# Log the date time
	date >> $log	

	# Ping Oracle with tnsping
	tnsping "$servicename" | tail -2 | tr -d \\n >> $log
	echo >> $log

	# Alternative for telnet
	nc -vz $oraclenode $oracleport &>> $log

	# Little c program which opens an tcp connection
	./test_socket $oraclenode $oracleport >> $log

	# Wait for a minut
	sleep 60
done

exit 0

	

