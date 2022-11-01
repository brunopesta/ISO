#!/bin/bash
num=(10 3 5 7 9 3 5 4)

productoria(){
	op=1
	for i in "${num[@]}"
	do
		count=$(expr $op \* $i )
		op=$count
	done
	echo $op
}

productoria
