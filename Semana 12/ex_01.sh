#!/bin/bash

#1 - Escreva um script que, baseado em argumentos de linha de comando:

#a - Liste apenas os diretórios de uma pasta
#b - Liste apenas os arquivos executáveis
#c - Liste apenas os scripts shell
#d - Liste apenas os links simbólicos
#e - Liste apenas arquivos com tamanho menor que 100 Bytes

dir=$1

if [ -e $dir ]; then

	echo -e "-> São diretórios:"
	for linha in "$(ls -l $dir)"; do
		echo -e "${linha}" | grep -E '^d'
	done

	echo -e "-> São arquivos:"
	for linha in "$(ls -l $dir)"; do
		echo -e "${linha}" | grep -E '^-'
	done

	echo -e "-> São Scripts Shell:"
	for linha in "$(ls -l $dir)"; do
		echo -e "${linha}" | grep -E '.sh$'
	done

	echo -e "-> São links simbólicos:"
	for linha in "$(ls -l $dir)"; do
		echo -e "${linha}" | grep -E '^l'
	done

	echo -e "-> São arquivos com menos de 100 bytes:"
	for linha in "$(ls -l $dir)"; do
		echo -e "${linha}" | grep -E '\b[0-9]{1,2} \b\b[a-z]{3}\b'
	done
else
	echo "Diretório inexistente, encerrando o programa..."
fi
