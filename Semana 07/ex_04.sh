#!/bin/bash

echo "Escreva um script que receba vários nomes de arquivo como parâmetros de linha de comando (o número de parâmetros pode variar de execução para execução) e imprima o nome de cada arquivo passado seguido de SIM, caso o arquivo exista, e de NAO caso contrário.\n"

for i in $*
do
	ls | grep "${i}" &> /dev/null
	(( $? == 0 )) && echo "${i} - SIM" || echo "${i} - NÃO"
done
