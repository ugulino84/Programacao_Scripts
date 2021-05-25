#!/bin/bash

#3 - Escreva um script que tenha uma função ping_test. Esta recebe um endereço IP como parâmetro, pinga para este IP (sem exibir nada na tela) e exibe OK se o endereço estiver acessível e FALHA caso contrário.

function ping_test {
	ping -c 1 $1 &> /dev/null && echo OK || echo FALHA
}

echo $(ping_test $1)
