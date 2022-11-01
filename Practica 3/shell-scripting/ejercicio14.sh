#!/bin/bash
if [ $# -ne 3 ]; then
	echo "Se esperaban 3 parametros primero el fie, despues -a or -b y por ultimo la cadena."
	exit 1
fi

case $2 in
	"-b")
		for file in $(ls $1)
		do
			mv $1/$file $1/$3$file
		done
		echo "REnombre realizado"
		exit 0
		;;
	"-a") 	for file in $(ls $1)
		do
			mv $1/$file $1/$file$3
		done
		echo "REnombre realizado"
		exit 0
		;;
	*) echo "Error no se ingrso ninguna de las dos opciones de renombre;"
		exit 1
		;;
esac
		
