#!/bin/bash

echo "Ingrese una opcion a elegir
	03:Ejercicio3
	12:EvaluarExpresiones
	13:ProbarEStructurasdecontrol
	Salir"
read opcion
case $opcion in
	03)
		$(sh | find $HOME -name "mostrar.sh")
		;;
	12)
		echo "Ingrese dos numero"
		read num1 num2
		result=$(find $HOME -name "ejercicio12.sh")
		bash "$result" $num1 $num2
		;;
	"13")
		$(sh | find $HOME -name "ejercicio13.sh")
		;;
	"Salir")
		echo "SALIENDOOO"
		exit 0
		;;
	*)
		echo "opcion no valida/"
	esac

	Rarito, repasar
