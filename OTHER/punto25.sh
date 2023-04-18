#!/bin/bash

usuario=(`grep "users" /etc/group`)

case $1 in
	"-b")
	if  [ ${#usuario[@]} -gt $2 ]
	then
		echo ${usuario[$2]}
	fi
	;;
	"-l")
	echo ${#usuario[@]}
	;;
	"-i")
	echo ${usuario[@]}
	;;
esac
