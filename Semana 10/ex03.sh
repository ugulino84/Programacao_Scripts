#!/bin/bash

#3 - Escreva um script que funcione como um explorador de arquivos. Exibe um menu. se o usuário digitar q, sai do script. Se digitar d, mostra os diretórios da pasta atual. Se digitar f, exibe os arquivos da pasta atual. Se digitar v <arq>, exibe o conteúdo do arquivo <arq>. Se digitar cd <dir>, muda para o diretório <dir>, se este existir.


dir=$PWD
echo -e '

-------- Files Explorer - Beta --------

'
while true; do
	
	
       	echo -e "
Diretório Atual: ${dir}
"	
	a=''
	b=''
	read -p "Digite uma opção:

	d : listar os diretórios da pasta atual
	f: listar os arquivos do diretório atual
	v <arq>: exibir o conteúdo do arquivo
	cd <dir>: mudar para o diretório <dir>
	q: sair

	" opc
	
	echo $opc > /tmp/opc.txt

	while read a b; do
				
		case $a in
		
			"d") echo -e "\nDiretórios:\n"; for linha in $(ls "${dir}"); do if [ -d $linha ]; then echo $linha; fi; done ;;
			"f") echo -e "\nArquivos:\n"; for linha in $(ls "${dir}"); do if [ -f $linha ]; then echo $linha; fi; done ;;
			"v") echo -e "$(cat $b)" ;;
			"cd") if [ -e $b ]; then dir="${b}"; else echo "Diretório inexistente"; fi ;;
			"q") break ;;
		esac

	done < /tmp/opc.txt	
		
	if [ "$a" = "q" ]; then
		break
	fi
done
