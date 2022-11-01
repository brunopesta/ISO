#!/bin/bash

#for i in {0..100} 
#do
#	echo "numero $i"
#	echo "y su elevacion al cuadrado es $(expr $i \* $i)"
#done

#C
if [ $# -ne 1 ]; then
	echo "Se esperaba un parametro"
	exit 1 
fi

if [ -d $1 ]; then
	echo "es un directorio"
	exit 0
fi

if [ -f $1 ]; then
	echo "ES un fichero"
else
	mkdir $1
fi

