#!/bin/bash
if  [ -f "$1" ]; then
	echo "Is a file"
	exit
elif [ -d "$1" ]; then
	echo "Is a directory"
	exit
else mkdir "$1"
fi
