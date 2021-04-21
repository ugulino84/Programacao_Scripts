#!/bin/bash

#4 - [CUIDADO!] Escreva um script que remova todos os arquivos que possuem permissão para execução no diretório atual (e nenhum outro).

for linha in $(ls "$PWD"); do
        if [ -x $linha -a -f $linha ]; then
                rm $linha
        fi
done
