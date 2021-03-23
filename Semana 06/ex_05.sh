#!/bin/bash


ls "$1" &> /dev/null && (( $(wc -l < "$1") > 4 )) &> /dev/null  || echo "BAD"
