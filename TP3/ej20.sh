#!/bin/bash

arreglo=()

imprimir()
{
	echo "${arreglo[@]}"
}

largo()
{
	echo "${#arreglo[@]}"
}

indices()
{
	echo "${!arreglo[@]}"
}

pop()
{
	unset arreglo[0]
	arreglo=(${arreglo[@]})
}

push()
{
	read num
	arreglo=("$num" "${arreglo[@]}")
}

borrar_elemento()
{
	echo "Ingrese indice del elemento a borrar"
	read num
	unset arreglo[$num]
	arreglo=(${arreglo[@]})
}

salir()
{
	exit 0;
}

select opcion in imprimir largo indices pop push borrar_elemento salir
do
	$opcion
done

