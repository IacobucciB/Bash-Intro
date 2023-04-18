#!/bin/bash

num=(2 3 10 3) #Ingrese valores entre los parenteiss

if [ ${#num[@]} -eq 0 ]
then
	echo "Por favor ingrese valores al vector"
	exit 1
fi
prod=1
for n in ${num[@]}
do
	((prod=prod*$n))
done
echo $prod

