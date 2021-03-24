#!/bin/bash

echo -e "Escreva um script que exiba o nome e número de linhas de cada um dos arquivos do diretório atual.\n"

da="$PWD"

for arq in $(ls "${da}"); do
	echo -e "${arq}"
	echo -e "$(wc -l < ${arq}) linhas\n------------"
done
