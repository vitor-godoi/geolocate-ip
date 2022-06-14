#!/bin/bash

echo Qual o arquivo com os ips?
read listaip

for ip in `cat $listaip`;
do

location=`proxychains curl -L -k -s https://iplist.cc/api/$ip|grep countryname|cut -d':' -f2`
echo $ip $location