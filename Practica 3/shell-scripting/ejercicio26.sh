#!/bin/bash
if [ $# -lt 1 ]; then
	echo "SE esperaba al menos 1 parametro"
	exit 1
fi

it=0
cont=0
echo $*
for i in $*
do
	echo "me ejecuto"
	let it++
	if [ $(expr $it % 2) -ne 0 ]; then 
		if [ -d $i  ]; then
			echo "Es un directorio"
		
		elif [ -f $i  ]; then
			echo "Es un archivo"
		else
			echo "No es ni archivo ni directorio"
			let cont++
		fi

	fi
done

echo "La cantidad de rutas q no son archivos ni directorios es: $cont"

				
