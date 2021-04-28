#!/bin/bash

#3 - Escreva um script que exiba um arquivo parte por parte (digamos 3 linhas em cada parte), esperando por um enter, até o fim do arquivo (parecido com o comando more).

#echo -e "$(cat $1)"
n=$((wc -l < ${1}) 2> /dev/null)
cabeca=1
calda=3

while [ ${cabeca} -le ${n} ]; do
	echo -e "$(cat $1 | head -${calda} | tail -3)"
	cabeca=$(( ${cabeca} + 3 ))
	calda=$(( ${calda} + 3 ))
	read -p "MORE"
done
