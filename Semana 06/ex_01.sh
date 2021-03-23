#!/bin/bash

echo "---- Comparação entre números inteiros ----"

read -p "Digite o primeiro número: " a
read -p "Digite o segundo número: " b
(("${a}"<"${b}")) && echo "O menor número é ${a}!" || echo "O menor número é ${b}!"
