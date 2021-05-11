#!/bin/bash

#4 - Escreva um script que, dado uma lista de números de telefone no formato xxxxxxxxxxx, coloque cada telefone no formato (xx) x xxxx-xxxx. Exemplo:
#Para o seguinte arquivo:

#	12345678900
#	11111111111
#	83987654321

#A saída deve ser:

#	(12) 3 4567-8900
#	(11) 1 1111-1111
#	(83) 9 8765-4321

sed -i -E 's/^(..)(.)(....)(.*)$/(\1) \2 \3-\4/' $1
