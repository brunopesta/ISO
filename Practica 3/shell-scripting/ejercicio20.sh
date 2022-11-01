#!/bin/bash
if [ $# -ne 0 ]; then
	exit 1
else
	pila=()

	push(){

		pila[${#pila[@]}]=$1
	}

	pop(){
		unset pila[$(expr ${#pila[*]} - 1)]
	}

	lenght(){
		return "${#pila[@]}"
		
	}

	printt(){
		echo "${pila[@]}"
	}

	#TEST
	push 1
	push 2
	push 3
	push 4
	push 5
	push 6
	push 7 
	push 8 
	push 9
	push 10
	printt
	lenght
	echo "Tamanio $?"
	echo "pop"
	pop
	pop
	pop
	lenght
	echo "tamanio $?"
	printt
fi
exit 1
