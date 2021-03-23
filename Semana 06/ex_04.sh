#!/bin/bash

a1=$1; a2=$2;

(( $(ls -l "${a1}" | grep "^-" -c) > $(ls -l "${a2}" | grep "^-" -c) )) && echo "${a1}" || echo "${a2}"
(( $(ls -l "${a1}" | grep "^-" -c) > $(ls -l "${a2}" | grep "^-" -c) )) && ls -l "${a1}" || ls -l "${a2}"
