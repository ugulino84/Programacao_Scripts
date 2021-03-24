#!/bin/bash

echo -e "Escreva um script que peça para o usuário digitar 2 nomes de arquivo e imprima o nome daquele que possui o maior número de linhas.\n"

read -p "Digite o nome do primeiro arquivo: " a
read -p "Digite o nome do segundo arquivo: " b
(( $(wc -l < "${a}") > $(wc -l < "${b}") )) && echo "${a}" || echo "${b}" 
