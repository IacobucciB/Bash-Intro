#!/bin/bash

dir_actual=$(pwd)
dir_bin=$HOME/bin

if [ ! -d "$dir_bin" ]; then
	mkdir "$dir_bin"
fi

num=0
for archivo in "$dir_actual"/*; do
	if [ -x "archivo" ]; then
		mv "$archivo" "$dir_bin"
		echo "Mov: $archivo"
		num=$((num+1))
	fi
done

if [ "$num"-eq 0 ]; then
	echo "No se movieron ejecutables"
else
	echo "Num: $num"
fi

