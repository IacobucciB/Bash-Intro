#!/bin/bash
for f in $(ls)
do
	echo $f | tr -d aA| tr '[:lower:][:upper:]' '[:upper:][:lower:]'
done 
