#!/usr/bin/env bash

read -p "Qual relatório deseja exlcuir?: " nome

mkdir -p backup

#Podemos usar o mv, dessa forma:
#mv $nome backup

#Ou podemos utilizar o cp e o rm:
cp $nome backup
#A opção "-f" pode ser usada para não dar erro se o arquivo não existir
rm -f $nome
