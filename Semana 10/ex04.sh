#!/bin/bash

#4 - Considere o seguinte arquivo ips.txt:
#8.8.8.8
#8.8.4.4
#200.148.191.197
#168.196.40.154
#45.225.123.54
#Use um laço while para executar 4 pings para cada ip. Liste os IPs que não foram possíveis acessar.

while read a; do

	if ! ping -c 1 $a &> /dev/null; then
		echo -e "$a" >> /tmp/pingerror
	fi

done < ips.txt

if [ -e /tmp/pingerror ]; then

	echo -e "Não foi possível acessar:

$(cat /tmp/pingerror)
"
	rm -r /tmp/pingerror
fi
