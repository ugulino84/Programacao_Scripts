#!/bin/bash


#1 - Escreva um script que receba o nome de um arquivo (a) e um número (x) como parâmetros de linha de comando. O script deve imprimir a linha número x do arquivo. Caso o arquivo possua menos que x linhas, o script deve imprimir a frase “Falha: o arquivo ‘a’ possui apenas n linhas”. Caso o arquivo não exista, o programa deve imprimir um erro.

a=$1
x=$2
n=$((wc -l < ${a}) 2> /dev/null)

if [ ! -e ${a} ]; then
	echo -e "Falha: o arquivo ${a} não existe."
elif [ ${n} -lt ${x} ]; then
	echo -e "Falha: o arquivo ${a} possui apenas ${n} linhas."
else
	echo -e "$(cat ${a} | head -${x} | tail -1)"
fi
