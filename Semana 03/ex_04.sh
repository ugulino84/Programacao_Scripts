#!/bin/bash

data=$(date +%F)
mkdir /tmp/${data}
cp *.* /tmp/${data}
tar -czf ${data}.tar.gz /tmp/${data}/*.* 2> /dev/null
mv "\tmp\${data}\${data}.tar.gz" $(pwd) 2> /dev/null
rm -rf /tmp/${data}
