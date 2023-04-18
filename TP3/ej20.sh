#!/bin/bash

arreglo=($*)

imprimir()
{
	echo "${arreglo[*]}"
}

largo()
{
	echo "${#arreglo[*]}"
}

pop()
{
	unset arreglo[0]
}

push()
{
	read num
	arreglo=("$num" "${arreglo[*]}")
}

salir()
{
	exit 0;
}

select opcion in imprimir largo push pop salir
do
	$opcion
done

