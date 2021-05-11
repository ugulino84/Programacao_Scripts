#!/bin/bash


#1 - Escreva um script que use o comando sed para remover linhas vazias de um arquivo, isto é, linhas que possuem apenas o enter (\n).

sed -i '/^$/d' $1
