#!/bin/bash


echo -e "Escreva um script que imprima todos os números pares de 1 até 101."

for (( i=1; i<=101; i++ )) 
do
	(( ${i} % 2 == 0 )) && echo "${i}"
done    
