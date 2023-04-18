#!/bin/bash
pila=()

function push {
 declare -n arr="$1"
 arr=("$2" "${arr[@]}")
}

function pop {
 declare -n arr="$1"
 arr=("${arr[@]:1}")
}

function length {
 declare -n arr="$1"
 echo "La pila tiene ${#arr[@]} elementos"
}

function print {
 declare -n  arr="$1"
 echo "Elementos: ${arr[@]}"
}


for ((i=0; i<10; i++))
do
 push pila $i
done
for ((i=0; i<3; i++))
do 
 pop pila
done
length pila
print pila
