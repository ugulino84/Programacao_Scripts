#!/bin/bash


echo -e "--------- Tutorial sobre Redirecionadores---------\n"

#Introdução

echo -e 'Os redirecionadores ( >, >>, 2>, 2>>, &>, &>>, <, <<, <<<, e | ) são ferramentas utilizadas para alterar as entradas (stdin - teclado) e saídas (stdout e stderr - monitor) padrão do shell script.\n'

#Funções dos redirecionadores

echo -e '> - direciona a saída stdout para um arquivo (se não existir o arquivo ele cria) sobrescrevendo seu conteúdo.\nEx.: ls /home/ > home.txt\n'

echo -e '>> - direciona a saída stdout para um arquivo (se não existir o arquivo ele cria) mas não sobrescreve, adiciona o conteúdo a partir da última linha do mesmo.\n'

echo -e '2> - direciona a saída de erro (stderr) para um arquivo (se não existir o arquivo ele cria) e sobrescreve o conteúdo do mesmo.\n'

echo -e '2>> -  direciona a saída de erro (stderr) para um arquivo (se não existir o arquivo ele cria) e mas não sobrescreve o conteúdo do mesmo, adiciona em linhas no final do arquivo.\n'

echo -e '&> - direciona ambas saídas (stdout e stderr) para um arquivo (se não existir o arquivo ele cria) sobrescrevendo seu conteúdo.\n'

echo -e '&>> - direciona ambas saídas (stdout e stderr) para um arquivo (se não existir o arquivo ele cria) mas não sobrescreve o conteúdo do mesmo, adiciona em linhas no final do arquivo.\n'

echo -e '< - é utilizado para indicar ao comando que a entrada padrão, STDIN, será um arquivo ou comando ao invés do teclado.\n\nEx.:  tr ''a-z'' ''A-Z'' < entrada.txt\n\nNeste caso, o comando tr será alimentado pelo STDIN entrada.txt; transformando letras minúsculas em maiúsculas.\n'

echo -e '<< - é utilizado quando se deseja inserir um conteúdo interativamente, até que seja informado seu fim.\n'

echo -e '<<< - "here string", redireciona a entrada para uma string informada no comando.\n\nEx,: tr ''a-z'' ''A-Z'' <<< marcos\n\n>MARCOS.'

echo -e '| - Sua função é ligar o STDOUT de um comando/programa ao STDIN de outro.'
