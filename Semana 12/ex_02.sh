#!/bin/bash

#2 - Escreva um script que use o comando grep para remover linhas vazias de um arquivo, isto é, linhas que possuem apenas o enter (\n).

grep -Ev "^$" $1 > /tmp/arq_temp
cat /tmp/arq_temp > $1
rm /tmp/arq_temp
