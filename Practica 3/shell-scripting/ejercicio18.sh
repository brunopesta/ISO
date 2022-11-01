#!/bin/bash
if [ $# -ne 1 ]; then
	echo" SE esperaba un parametro"
	exit 1
fi


while [ $(w |grep $1| wc -l) -ne 1 ]
do
	sleep 10
	echo "El usuario $1 no esta logueado"
done

echo "el usuario $1 eta logueado!"
exit 0
	
