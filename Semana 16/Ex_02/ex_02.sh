#!/bin/bash

#Escreva um script que, para cada nome na coluna 1, some os números da coluna 2, totalizando-os. Use arrays associativos, pois os nomes da coluna 1 podem mudar.

declare -A total

total["$(cat in.txt | cut -d' ' -f1 | head -n1)"]=$(cat in.txt | cut -d' ' -f2 | head -n1)

for (( i=2; i<=$(wc -l < in.txt); i++ )); do

	nome="$(cat in.txt | cut -d' ' -f1 | head -n$i | tail -1)"
	valor="$(cat in.txt | cut -d' ' -f2 | head -n$i | tail -1)"
	
	if [[ $(echo ${!total[*]}) = *$nome* ]]; then
		total[$nome]=$(echo "scale=2; ${total[$nome]} + $valor" | bc)
	else
		total[$nome]=$valor
	fi
done

echo ${!total[@]}
echo ${total[@]}
