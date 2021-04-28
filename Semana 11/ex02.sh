#!/bin/bash

#2 - Escreva um script que use o comando tr para remover linhas vazias de um arquivo, isto é, linhas que possuem apenas o enter (\n).

$((tr -s "\n" "\n" < $1) > /tmp/teste2.txt)
cat /tmp/teste2.txt > $1
rm /tmp/teste2.txt
