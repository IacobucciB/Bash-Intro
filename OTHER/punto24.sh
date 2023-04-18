#!/bin/bash

vector1=(517 4 2004227 336 47)
vector2=(273 458 15000000 2 78) #Complete los vectores con la misma cantidad

if [ ${#vector1[@]} -ne ${#vector2[@]} ]
then
	echo "La cantidad de datos debe ser igual"
fi
for ((n=0; n<${#vector1[@]}; n++))
do
	i=$(( vector1[$n] + vector2[$n] ))
	echo "La suma de los elementos de la posicion $n de los vectores es $i"
done
