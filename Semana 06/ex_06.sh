#!/bin/bash

echo "---- Imprimir o menor entre 2 números reais ----"

read -p "Digite o primeiro número: " a
read -p "Digite o segundo número: " b

(( $(bc <<<"${a} < ${b}") == 1 )) && echo ${a} || echo ${b}
