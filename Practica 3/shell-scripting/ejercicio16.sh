#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Se esperaba un parametro"
	exit 1
fi

echo" La extension es $1"

echo "USuario:$USER | cant arch: *$1:$(find $HOME -name *.$1 | wc -l )" > reporte.txt

echo "Reporte creado correctamente"
exit 0

