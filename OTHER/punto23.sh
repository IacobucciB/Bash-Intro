#!/bin/bash

num=(1 2 3 4 5 6 7 8 9 10) #Rellene los parentesis con numeros

if [ ${#num[@]} -eq 0 ]
then
	echo "Por favor ingrese valores al vector"
	exit 1
fi
impares=0
for n in ${num[@]}
do
	((lmao=n % 2))
	if [ $lmao -ne 0 ]
	then
		((impares=impares+1))
	else
		echo "$n"
	fi
done
echo "Cantidad de impares: $impares"
