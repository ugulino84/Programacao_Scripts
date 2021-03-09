#!/bin/bash


echo -e 'Substituição de Variável é quando precisamos utilizar o conteúdo de uma determinada variável em um comando no script shell. A sintaxe é a seguinte: ${variável}. Desta forma o sistema vai substituir o conteúdo da variável e retornar para o comando.\n\nEx: Um script para imprimir na tela o conteúdo de uma variável informada pelo usuário.\n\n#!/bin/bash\nread -p "Digite a variável a: " a\necho -e ${a}'
echo -e '\n\nSubstituição de Shell é quando utilizamos dentro de um script outro shell já existente no sistema. A sintaxe é parecida com a da substituição de variável, trocando apenas as chaves pelos parênteses: $(comando). Ex.: Um script para imprimir na tela a data atual do sistema.\n\n#!/bin/bash\n\necho $(date)'
