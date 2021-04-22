#!/bin/bash

#2 - Escreva um script que exibe a data/hora atual na tela enquanto espera que um arquivo chamado chave.txt seja criado no diretório /tmp, verificando isso a cada 2 segundos. Quando o arquivo for criado, o script termina sua execução.


while true; do

	echo -e $(date)
	sleep 2
	if [ -e /tmp/chave.txt ]; then
		break
	fi
done
	

