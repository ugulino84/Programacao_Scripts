#!/bin/bash

echo -e "Melhore ainda mais o script para que receba o nome do diretório (de onde serão listados os nomes dos arquivos) seja lido como parâmetro de linha de comando.\n"

datual="$1"
echo -e "$datual\n"

#Buscando arquivos dentro do diretório informado como parâmetro
ls -l "${datual}" | grep "^-" | tr -d '-' > /tmp/arquivos

for arq in $(ls "${datual}"); do
	cat /tmp/arquivos | grep "${arq}" &> /dev/null && echo -e "$(wc -l < "${datual}"/"${arq}") "${arq}"" >> /tmp/arquivos_2
done

#ordenando
sort -rn /tmp/arquivos_2 > /tmp/arquivos_ordenados

#separando as colunas
cut -d" " -f1 /tmp/arquivos_ordenados > /tmp/nlinhas
cut -d" " -f2 /tmp/arquivos_ordenados > /tmp/nomes

#imprimindo o resultado na tela
qtde_arq=$(wc -l < /tmp/arquivos_2)
for (( i=1; i<=${qtde_arq}; i++ )); do
	echo -e "$(cat /tmp/nomes | head -${i} | tail -1) - $(cat /tmp/nlinhas | head -${i} | tail -1) linhas"
done

echo -e "${qtde_arq} arquivo(s)\n"

(ls -l "$1" | grep "^d") > /tmp/diretorios
cat /tmp/diretorios

echo -e "$(wc -l < /tmp/diretorios) diretório(s)\n"

#removendo arquivos temporários
rm /tmp/arquivos /tmp/arquivos_ordenados /tmp/nlinhas /tmp/nomes /tmp/arquivos_2 /tmp/diretorios
