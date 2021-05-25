#!/bin/bash

#Escreva um script que importe as funções da questão anterior e use-as para encontrar o menor e o maior número do arquivo apresentado.

source ex_01.sh

for i in $(cat ex02.txt); do
	if [ -z "$x" ]; then
		x=$i; y=$i
	fi
	x=$(menor $x $i)
	y=$(maior $y $i)
done

echo -e "Menor = $x\nMaior = $y"
