#!/bin/bash

function inicializar {
	declare -n arr="$1"
	arr=()
}

function agregar_elem {
	declare -n arr="$1"
	arr=("${arr[@]}" "$2")
}

function eliminar_elem {
	declare -n arr="$1"
	re='^[0-9]+$'
	if [[ "$2" =~ $re ]] && [ "$2" -lt ${#arr[@]} ]
	then
		echo "segundo $2"
		pos="$2"
		arr=("${arr[@]:0:$pos}" "${arr[@]:$((pos+1))}")
	fi
}

function longitud {
	declare -n arr="$1"
	echo "${#arr[@]}"
}

function imprimir {
	declare -n arr="$1"
	echo "${arr[@]}"
}

function inicializar_con_valores {
	declare -n arr="$1"
	arr=()
	for ((i=0; i<$2; i++))
	do
		arr=("${arr[@]}" "$3")
	done
}


inicializar vector
agregar_elem vector 2
agregar_elem vector 3
agregar_elem vector 4
agregar_elem vector 20
longitud vector
imprimir vector
eliminar_elem vector 9
eliminar_elem vector 3
imprimir vector
inicializar_con_valores vector 4 5
imprimir vector
longitud vector
