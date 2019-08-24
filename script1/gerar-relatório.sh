#!/usr/bin/env bash

#A opção "-p" pode ser usada para mandar o texto usando o read, em vez de precisar
# usar um echo.
read -p "Digite um nome para o relatório: " nome

#A opção "-p" força o mkdir a não dar erro se o diretório já existir.
mkdir -p relatorios
cd relatorios

#Na primeira escrita no arquivo eu utilizo somente 1 ">" para sobrescrever o arquivo
# caso ele já exista.
echo $(date) > $nome
cat /proc/version >> $nome
cat /etc/shells >> $nome
echo $(uptime) >> $nome

#Preciso guardar os segundos para fazer uma expressão aritmética direto no "echo".
segundos=$(date +%s)
echo $(( $segundos / 3600 )) >> $nome

#Também poderia implementar assim:
# segundos=$(date +%s)
# horas=$(( $segundos / 3600 ))
# echo $horas >> $nome
