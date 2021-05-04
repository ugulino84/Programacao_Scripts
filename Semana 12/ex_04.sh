#!/bin/bash

#4 - Escreva um script que valide um e-mail no formato username@dominio. Validar significa dizer se o número está no padrão ou não.

read -p "Digite o email: " email

if echo -e "${email}" | grep -E '[ ]'; then
	echo -e "E-mail inválido!"
	exit	
fi

if echo -e "${email}" | grep -E '[A-Za-z0-9_.-]{1,}@[A-Za-z0-9_.-]{1,}'; then
	echo "E-mail válido!"
else
	echo "E-mail inválido!"
fi

