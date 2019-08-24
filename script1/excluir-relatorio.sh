#!/usr/bin/env bash

#A opção "-p" pode ser usada para mandar o texto usando o read, em vez de precisar
# usar um echo.
read -p "Qual relatório deseja exlcuir?: " nome

#A opção "-p" força o mkdir a não dar erro se o diretório já existir.
mkdir -p backup

#Podemos usar o mv, dessa forma:
#mv $nome backup

#Ou podemos utilizar o cp e o rm:
cp $nome backup
#A opção "-f" pode ser usada para não dar erro se o arquivo não existir
rm -f $nome
