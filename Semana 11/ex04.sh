#!/bin/bash

#4 - Escreva um script que leia um endereço IP, separe os 4 octetos, e imprima-os em formato binário. Ex.:
#Digite um endereço IP: 8.8.4.4
#Octeto #1: 8 em binário 00001000
#Octeto #2: 8 em binário 00001000
#Octeto #3: 4 em binário 00000100
#Octeto #4: 4 em binário 00000100
#Ps: Se não conseguir colocar os zeros a mais no início dos números binários não tem problema.

read -p "Digite um endereço ip: " ip

echo -e "${ip}" > /tmp/ip.txt

#separando os octetos utilizando o comando cut

octeto1=$(cat /tmp/ip.txt | cut -d '.' -f 1)
octeto2=$(cat /tmp/ip.txt | cut -d '.' -f 2)
octeto3=$(cat /tmp/ip.txt | cut -d '.' -f 3)
octeto4=$(cat /tmp/ip.txt | cut -d '.' -f 4)

echo -e "Octeto #1: ${octeto1} em binário é $(echo "obase=2; ${octeto1}" | bc)"
echo -e "Octeto #2: ${octeto2} em binário é $(echo "obase=2; ${octeto2}" | bc)"
echo -e "Octeto #3: ${octeto3} em binário é $(echo "obase=2; ${octeto3}" | bc)"
echo -e "Octeto #4: ${octeto4} em binário é $(echo "obase=2; ${octeto4}" | bc)"
