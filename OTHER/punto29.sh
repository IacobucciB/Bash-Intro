#!/bin/bash

function verArchivo {
	declare -n arr="$1"
	if [[ "${arr[*]}" =~ "$2" ]]
	then
		cat $HOME/$2
	else
		echo "Archivo no encotrado"
		return 5
	fi
}

function cantidadArchivos {
	declare -n arr="$1"
	echo "${#arr[@]}"
}

function borrarArchivo {
	declare -n arr="$1"
	if [[ "${arr[*]}" =~ "$2" ]]
        then
                echo "Desea borrar el archivo logicamente [Si/No]: "
		read ans
		if [ $ans = "Si" ]
		then
			unset arr[$2]
		elif [ $ans = "No" ]
		then
			unset arr[$2]
			rm $HOME/$2
		fi
        else
                echo "Archivo no encontrado"
                return 10

        fi
}

archivos=($(ls $HOME/*.doc))
cantidadArchivos archivos
verArchivo archivos "f.doc"
verArchivo archivos "lmao.doc"
cantidadArchivos archivos
borrarArchivo archivos "lmao.doc"
cantidadArchivos archivos
borrarArchivo archivos "super.doc"
cantidadArchivos archivos
borrarArchivo archivos "f.doc"
