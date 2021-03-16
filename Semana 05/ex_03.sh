#!/bin/bash

a=$1; b=$2; c=$3

ls ${a} ${b} ${c} > log.log 2> erro.log 
