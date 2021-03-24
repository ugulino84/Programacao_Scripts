#!/bin/bash

echo -e "Melhore o script para que os arquivos sejam exibidos em ordem decrescente em relação ao número de linhas.\n"

qtde_arq=$(ls | wc -l)
datual="$PWD"

for arq in $(ls "${datual}"); do
	echo -e "$(wc -l < ${arq}) "${arq}"" >> /tmp/arquivos
done
sort -rn /tmp/arquivos > /tmp/arquivos_ordenados
cut -d" " -f1 /tmp/arquivos_ordenados > /tmp/nlinhas
cut -d" " -f2 /tmp/arquivos_ordenados > /tmp/nomes

for (( i=1; i<=${qtde_arq}; i++ )); do
	echo -e "$(cat /tmp/nomes | head -${i} | tail -1)"
	echo -e "$(cat /tmp/nlinhas | head -${i} | tail -1) linhas\n---------"
done

rm /tmp/arquivos /tmp/arquivos_ordenados /tmp/nlinhas /tmp/nomes
