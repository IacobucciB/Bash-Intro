#!/bin/bash

function cantidad {
	declare -n arr="$1"
	echo "${#arr[@]]}"
}

function listar {
	declare -n arr="$1"
	echo "${arr[@]}"
}

function eliminar {
	declare -n arr="$1"
	if [ $3 = "i" ]
	then
		unset arr[$2]
	elif [ $3 = "l" ]
	then
		unset arr[$2]
		dir="/var/log/${arr[$2]}"
		if [ -f $dir ]
		then
			rm $dir
		elif [ -d $dir ]
		then
			rmdir $dir
		fi
	fi
}


array=(`ls /var/log | grep "access"`)


while true
do
	echo "Bienvenido"
	echo "1 cantidad"
	echo "2 listar"
	echo "3 eliminar"
	echo "4 salir"
	read n
	case $n in
		"1")
			cantidad array
		;;
		"2")
			listar array
		;;
		"3")
			echo "ingrese posicion a eliminar"
			read p
			echo "i logico"
			echo "l fisico"
			read m
			eliminar array $p $m
		;;
		"4")
			exit 0
		;;
	esac
done
