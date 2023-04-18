#!/bin/bash
while true
do
	echo "Bienvenido al Menu de Comandos Amigables con el Usuario (Usted)"
	for n in `ls *.sh`
	do
		i=`echo "$n" | cut -d"o" -f2 | cut -d. -f1`
		echo "$i $n"
	done
	((i=i+1))
	echo "$i Salir"
	echo "Elija una opcion: "
	read op
	if [ $op = $i ] 
	then
		exit
	else
		n=$(ls | grep $op)
		bash ./$n
	fi
done
