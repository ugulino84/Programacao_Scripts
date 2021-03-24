#!/bin/bash


echo -e "Melhore o script para que imprima todos os números pares entre a e b, sendo a o primeiro parâmetro de linha de comando, enquanto que b é o segundo."

for (( i=$1; i<=$2; i++ )) 
do
	(( $i % 2 == 0 )) &&  echo "${i}"
done    
