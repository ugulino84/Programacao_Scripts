#!/bin/bash

#3 - Escreva um script que imprima a palavra DIRS e abaixo liste todos os diretórios da pasta atual. Em seguida imprima a palavra FILES e abaixo liste todos os arquivos da pasta atual. Por fim, imprima a palavra LINKS e abaixo liste todos os links simbólicos da pasta atual.


echo 'FILES:'
for linha in $(ls "$PWD"); do
	if [ -f $linha ]; then
		echo $linha
      	fi
done

echo '
DIRS:'
for linha in $(ls "$PWD"); do
	if [ -d $linha ]; then
		echo $linha
      	fi
done

echo '
LINKS:'
for linha in $(ls "$PWD"); do
	if [ -h $linha ]; then
		echo $linha
      	fi
done

