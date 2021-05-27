#!/bin/bash

#Escreva um script que abrevie o nome da cada pessoa na lista do arquivo in.txt. Use apenas arrays e strings do bash. Exemplo de abreviação: Ana T. V. Boliveira

for (( i=1; i<=$(wc -l < in.txt); i++ )); do
	nome=( $(cat in.txt | head -n$i | tail -1) )
        echo -e "${nome[0]} \c"
	n=$(echo -e "${#nome[*]} - 1" | bc)
	
	for (( j=1; j<$n; j++)); do
		sobrenome="${nome[j]}"
		echo -e "${sobrenome:0:1}. \c"
	done
	echo ${nome[$n]}
done
