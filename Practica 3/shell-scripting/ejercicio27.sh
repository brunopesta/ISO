#!/bin/bash

if [ $# -ne 0 ]; then
	exit 1
fi


inicializar(){
	array=()
}

agregar_elem(){
	array[${#array[@]}]=$1
}

eliminar_elem(){
	if [ $1 -lt ${#array[@]} ]; then
		unset array[$1]
	else
		echo "SE ingreso una posicion invalida"
	fi
}

longitud(){
	echo "${#array[@]}"
}

imprimir(){
	echo "${array[@]}"
}

asignar_con_valores(){
	arr=()
	for ((i=0; i<$1; i++)); do
		echo "jujaju"
		arr[${#arr[@]}]=$2
	done

	echo "${arr[@]}"
}

asignar_con_valores 5 10
inicializar
agregar_elem 3
agregar_elem 4
agregar_elem 6
longitud
imprimir
