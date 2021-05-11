#!/bin/bash

#3 - Escreva um script que remova todos os números de CPF de um arquivo de entrada, alterando o seu valor para **CENSURADO**.

sed -i -E 's/[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}/**CENSURADO**/g' $1
