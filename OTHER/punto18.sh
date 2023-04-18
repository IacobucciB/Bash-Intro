#!/bin/bash
while true
do
	logged=`who | grep "$1" | wc -l`
	if [ $logged -eq 0 ]
	then
		`sleep 10`
	else
		echo "El usuario $1 se loggeo"
		exit
	fi
done
	
