#!/bin/bash

if ! [ -d $1 ]
then
	exit 4
fi

bruh=$(ls -l $1  | cut -d- -f1 | grep "rw" | wc -l)
echo $bruh
