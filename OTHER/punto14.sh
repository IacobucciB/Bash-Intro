#!/bin/bash
cd "$1"
case "$2" in
	"-a")
	for file in $(ls)
	do
		mv -v "$file" "$file$3"
	done
	;;
	"-b")
	for file in $(ls)
	do
		mv -v "$file" "$3$file"
	done
	;;
esac

