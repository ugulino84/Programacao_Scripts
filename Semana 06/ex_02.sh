#!/bin/bash

a1=$1; a2=$2; a3=$3;

ls ${a1} &> /dev/null && echo "SIM" || echo "NÃO"

ls ${a2} &> /dev/null && echo "SIM" || echo "NÃO"

ls ${a3} &> /dev/null && echo "SIM" || echo "NÃO"
