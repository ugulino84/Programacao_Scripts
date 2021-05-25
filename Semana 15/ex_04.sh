#!/bin/bash

#4 - Escreva um script que, baseado em opções de linha de comando:
#a - Remova todas as letras maiúsculas de um arquivo (usando tr).
#b - Remova todos os dígitos de um arquivo (usando sed).
#c - Substitua todos os caracteres que não são letras nem dígitos de um arquivo por <?> (usando awk).

#Cada uma das opções deve ser escrita em uma função diferente. Estas funções devem estar em um módulo (i.e., um script diferente).

source functions.sh

arquivo=$1

while true; do
	
	if [ -e $arquivo ]; then

		read -p "Opções:
a - Remove todas as letras maiúsculas do arquivo.
b - Remove todos os dígitos do arquivo.
c - Substitui todos os caracteres que não são letras nem dígitos de um arquivo por <?>.
e - Exibir arquivo
q - Encerrar o programa

>>> " opc

		case $opc in

			a) $(remover_maiusculas $arquivo) ;;
			b) $(remover_digitos $arquivo) ;;
			c) $(sub_caracteres_especiais $arquivo) ;;
			q) break ;;
			e) cat $arquivo ;;
			*) echo "Opção não disponível!" ;;
		esac



	else
		echo "Arquivo não encontrado."
		break
	fi
done
