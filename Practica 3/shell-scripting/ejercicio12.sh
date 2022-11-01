#!/bin/bash
if [ $# -ne 2 ] 
then
	echo "Se esperaban 2 numeros"
	exit 1
fi


#echo "Ingrese dos numeros"
#read num1 num2

echo "MULTIPLICACION $(expr $1 \* $2)"

echo "DIVISON $(expr $1 % $2)"

echo "suma: $(expr $1 + $2)"

echo "RESTA: $(expr $1 - $2)"

if [ $1 -gt $2 ] 
then
	echo "($1 es mas grande que $2)"
else
	echo "$2 es mas grande que $1"
fi

