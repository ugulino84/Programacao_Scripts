#!/bin/bash


#2 - Escreva um script que, baseado em opções de linha de comando:
#a - Remova todas as letras de um arquivo.
#b - Remova todos os dígitos de um arquivo.
#c - Substitua todos os caracteres que não são letras nem dígitos de um arquivo por <?>.

read -p "Qual o arquivo que desejas editar? " arquivo

if [ -e $arquivo ]; then

	read -p "Opções:

a - Remove todas as letras do arquivo.
b - Remove todos os dígitos do arquivo.
c - Substitua todos os caracteres que não são letras nem dígitos de um arquivo por <?>.

opção > " opc

	case $opc in

		a) sed -i -E 's/[a-z]//ig' $arquivo; cat $arquivo ;;
		b) sed -i -E 's/[0-9]//g' $arquivo; cat $arquivo ;;
		c) sed -i -E 's/[^a-z0-9]/?/ig' $arquivo; cat $arquivo ;;
		*) echo "Opção não disponível! Saindo..."
	esac
	
	

else
	echo "Arquivo não encontrado."

fi
