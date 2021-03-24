#!/bin/bash


echo -e "Escreva um script que peça para o usuário digitar dois números, a e b, e calcule (e exiba na tela) a soma de todos os números de a até b.\n"

read -p "Digite um número: " a
read -p "Digite outro número: " b

soma=0

for i in $(seq ${a} ${b}); do
	soma=$(( ${soma} + ${i} ))
done

echo "${soma}"
