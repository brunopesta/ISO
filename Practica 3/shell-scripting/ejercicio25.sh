#!/bin/bash
if [ $# -gt 2 ];then
	echo "Se esperaba un parametro"
	exit 1
fi

array=( $(cat /etc/group | grep users | cut -d:  -f4| tr ',' ' '))

case $1 in
	"-b")
		if [ $2 -lt 0 ] || [ $2 -ge ${#array[*]} ]; then
			echo "valor de n invalido"
		else
			echo "${array[$2]}"
		fi
	;;
	"-l")
		echo "${#array[*]}"
	;;
	"-i")
		echo " ${array[@]}"
	;;
	*)
		echo "Ingrese un parametro valido"
	;;

esac
exit 0

