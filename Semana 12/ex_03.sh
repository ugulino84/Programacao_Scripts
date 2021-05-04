#!/bin/bash

#3 - Escreva um script que valide as seguintes regras para criação de senha: pelo menos uma letra maiúscula, uma letra minúscula e um número. Validar significa receber uma senha e dizer se esta obedece ao padrão ou não.

while true; do
	read -p "Digite sua senha, a mesma deve conter ao menos: 

	- Uma letra Maiúscula;
	- Uma letra Minúscula;
	- Um caracter numérico.

	Senha: " senha
	
	while true; do
		echo -e "$senha" | grep '[0-9]' &> /dev/null
		if [ $? -ne 0 ] ; then
			echo -e "\nSenha inválida! Tente novamente...\n"
			break 1 
		fi
		
		echo -e "$senha" | grep [a-z] &> /dev/null
		if [ $? -ne 0 ] ; then
			echo -e "\nSenha inválida! Tente novamente...\n"
			break 1
		fi
		
		echo -e "$senha" | grep [A-Z] &> /dev/null
		if [ $? -ne 0 ] ; then
			echo -e "\nSenha inválida! Tente novamente...\n"
			break 1
		fi
		
		echo -e "\nSenha cadastrada com sucesso! 
Encerrando o programa...

	Até Logo!"
		break 2
	done
done
