#!/bin/bash

#1 - Escreva um script chamado help_test_2.sh. Este deve ter um laço, apresentando opções para o usuário. Se o usuário digitar sair, ele sai do script. Se digitar “logica”, o script deve imprimir uma ajuda sobre os parâmetros lógicos do comando test. Se digitar “aritmetica”, o script deve imprimir uma ajuda sobre os parâmetros aritméticos do comando test. Se digitar “strings”, o script deve imprimir uma ajuda sobre os parâmetros para strings do comando test. Se digitar “variáveis”, o script deve imprimir uma ajuda sobre os parâmetros para variáveis do comando test. Se digitar “arquivos”, o script deve imprimir uma ajuda sobre os parâmetros sobre arquivos do comando test. Se digitar "extended", o script deve imprimir uma ajuda sobre a notação estendida [[ ]].

word=''
echo -e '

----------- Comando Test - Tutorial 2 ------------

'
while [ "${word}" != "sair" ]; do
	read -p 'Digite:
    
    sair:  para encerrar o programa.

    logica: imprimir uma ajuda sobre os parâmetros lógicos do comando test.
    
    aritmetica: imprimir uma ajuda sobre os parâmetros aritméticos do comando test.
    
    strings: imprimir uma ajuda sobre os parâmetros para strings do comando test.
    
    variáveis: imprimir uma ajuda sobre os parâmetros para variáveis do comando test.
    
    arquivos: imprimir uma ajuda sobre os parâmetros sobre arquivos do comando test.
    
    extended: imprimir uma ajuda sobre a notação estendida [[ ]].

    ': word

 	i="$word"
    	
	if [ $i = 'logica' -o $i = 'Logica' -o $i = 'Lógica' -o $i = 'lógica' ]
	then
		echo -e 'Operadores Lógicos:

-o (or): se qualquer uma das condições for verdadeira ele seta a variável $? com o valor 0 (zero) e caso contrário $! será setado com um valor diferente de zero. 

Sintaxe: 

[ condição -o condição ]   
ou 
test condição -o condição

-a (and): se ambas condições forem verdadeiras, ele seta a variável $? com o valor 0 (zero) e, caso contrário, $! será setado com um valor diferente de zero. 

Sintaxe: 

[ condição -a condição ]   
ou 
test condição -a condição

! (not): este operador inverte o resultado da comparação seguinte. Se for verdadeira ele a torna falsa e vice e versa. 

Sintaxe: 

[ ! condição ]   
ou 
test ! condição

'
	elif [ $i = 'aritmetica' -o $i = 'Aritmetica' -o $i = 'Aritmética' -o $i = 'aritmética' ]
	then
		echo -e 'Operadores Aritméticos:


test a -gt b: testa se a é maior que b.

test a -ge b: testa se a é maior ou igual a b.

test a -lt b: testa se a é menor que b.

test a -le b: testa se a é menor ou igual a b.

test a -eq b: testa se a é igual a b.

Obs.: Em todos os exemplos o comando test pode ser substituído pelos [ ]


'

	elif [ $i = 'Strings' -o $i = 'strings' -o $i = 'STRINGS' ]
	then
		echo -e 'Testes com Strings:


"string" = "string : Testa se uma string é igual à outra.

"string" != "string : Testa se uma string é diferente da outra. 

'

	elif [ $i = 'arquivos' -o $i = 'Arquivos' -o $i = 'ARQUIVOS' ]
	then
		echo -e ' Arquivos:


-f : testa se o parâmetro passado existe e é um arquivo. Sintaxe: test -f parâmetro

-e : testa se o parâmetro passado existe. Sintaxe: test -e parâmetro

-d : testa se o parâmetro passado existe é um diretório. Sintaxe: test -d parâmetro

-h: testa se o parâmetro passado existe é um link simbólico. Mesma coisa de -L. Sintaxe: test -h parâmetro

-g: testa se o parâmetro passado existe e é set-group-ID.

-G: testa se o parâmetro passado existe é propriedade do ID de grupo efetivo.

-k: testa se o parâmetro passado existe e tem seu sticky bit definido.

-O: testa se o parâmetro passado existe e pertence ao ID de usuário efetivo.

-p: testa se o parâmetro passado existe e é um pipe nomeado.

-r: testa se o parâmetro passado existe e a permissão de leitura foi concedida.

-s: testa se o parâmetro passado existe e tem um tamanho maior que zero.

-S: testa se o parâmetro passado existe e é um socket.

-t: testa se o descritor de arquivo FD está aberto em um terminal.

-u: testa se o parâmetro passado existe e seu bit set-user-ID está definido.

-w: testa se o parâmetro passado existe e a permissão de gravação foi concedida.

-x: testa se o parâmetro passado existe e a permissão de execução (ou pesquisa) foi concedida.

Obs.: Em todos os casos o comando test pode ser substituído pelos [ ].


'	
	
	elif [ $i = 'variaveis' -o $i = 'variáveis' -o $i = 'Variáveis' -o $i = 'Variaveis' ]
	then
		echo -e 'Variáveis:
		

-z : testa se a variável tem algum valor diferente de vazio.

-n: é o oposto de -z, testa se a variável é "não vazia".

'
	else
		if [ $i != 'sair' ]; then
			echo -e "
			Opção inválida, por favor digite uma das opções abaixo!
			"
		else
			echo -e "
			Foi um prazer poder lhe ajudar, até logo!"
		fi
	fi
done
