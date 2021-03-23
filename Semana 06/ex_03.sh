#!/bin/bash



(( $(wc -l < $1) > $(wc -l < $2) )) && echo "$1" || echo "$2" 
