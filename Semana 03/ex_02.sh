#!/bin/bash

read -p "Digite o caminho do diretŕio 01: " a
read -p "Digite o caminho do diretŕio 02: " b
read -p "Digite o caminho do diretŕio 03: " c

echo -e "\nDiretório 1\n"
ls ${a}

echo -e "\nDiretório 2\n"
ls ${b}

echo -e "\nDiretório 3\n"	
ls ${c}

