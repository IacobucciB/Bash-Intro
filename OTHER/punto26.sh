#!/bin/bash

if [ $# -eq 0 ]
then
	echo "directorio o archivo no especificado"
	exit 1
fi
inx=0
param=1
for p in $@
do
	((mod=param % 2))
	if [ $mod -eq 1 ]
	then	
		if [ -f $p ]
		then
			echo "$p es un archivo"
		elif [ -d $p ]
		then
			echo "$p es un directorio"
		else ((inx=inx+1))
		fi
	fi
	((param=param+1))
done
echo "archivos inexistentes $inx"
