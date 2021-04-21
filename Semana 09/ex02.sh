#!/bin/bash

#2 - Se você cria uma variável no shell atual e usa o comando export, esta variável fica disponível em qualquer script chamado a partir do shell atual. Ex.:

#x=10
#export x
#./teste.sh

#Se executar “echo $x” dentro do script teste.sh, este imprimirá 10. Sem o export, a variável “x” não existiria. Escreva um script que teste se as variáveis x, y e z existem (e têm valor diferente de vazio). Peça para o usuário digitar um valor para cada uma que não existir. Exiba o valor da soma x+y+z na tela.

test -z $x
if [ $? = 0 ]; then
	read -p "digite o valor de x: " x
fi
test -z $y
if [ $? = 0 ]; then
	read -p "digite o valor de y: " y
fi
test -z $z
if [ $? = 0 ]; then
	read -p "digite o valor de z: " z
fi

soma=$(( $x + $y + $z ))
echo -e "soma =  $soma"
