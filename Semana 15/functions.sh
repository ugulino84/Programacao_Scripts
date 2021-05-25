#!/bin/bash

function remover_maiusculas {
	tr -d 'A-Z' < $1 > /tmp/novo_arq
	cat /tmp/novo_arq > $1
	rm /tmp/novo_arq
}

function remover_digitos {
	sed -i -E 's/[0-9]//g' $1
}

function sub_caracteres_especiais {
	awk '{for (i=1; i<=NF;i++) printf $i" "; printf "\n"}' < teste | sed -E 's/[^[:alnum:]]/?/g' > /tmp/novo_arq
	cat /tmp/novo_arq > $1
	rm /tmp/novo_arq
}
