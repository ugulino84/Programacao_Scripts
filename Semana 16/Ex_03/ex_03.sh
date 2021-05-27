#!/bin/bash

#Escreva um script que imprima o nome da pessoa que possui menos palavras no nome recebendo como entrada o arquivo in.txt.


awk '{print $0":"NF}' < in.txt > /tmp/arrays.txt
menor=$(cat /tmp/arrays.txt | cut -d: -f2 | head -n1 | tail -1)

for (( i=1; i<=$(wc -l < in.txt); i++ )); do
	nome="$(cat /tmp/arrays.txt | cut -d: -f1 | head -n$i | tail -1)"
        valor=$(cat /tmp/arrays.txt | cut -d: -f2 | head -n$i | tail -1)
	
	if [ $valor -lt $menor ]; then
		menor=$valor
		lista=( "$nome" )
	fi
done

echo ${lista[*]}

rm /tmp/arrays.txt
