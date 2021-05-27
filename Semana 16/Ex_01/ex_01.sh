#!/bin/bash

#1 - Escreva um script que peça para o usuário digitar um conjunto de números na mesma linha, separados por espaço (podem ser vários números, o usuário decide quantos) e exiba o maior deles. O script deve ter uma função chamada maior_do_array para selecionar o maior número.



function maior_do_array(){
	maior=$1
	for i in  $*; do
		if [ $i -gt $maior ]; then
			maior=$i
		fi	
	done
	echo $maior
}

echo "Digite uma sequência de números na mesma linha separados por espaço: "
read -a A

maior_do_array ${A[*]}
