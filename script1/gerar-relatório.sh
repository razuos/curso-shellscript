#!/usr/bin/env bash

#A opção "-p" pode ser usada para mandar o texto usando o read, em vez de precisar
# usar um echo.

read -p "Digite um nome para o relatório: " nome

mkdir -p relatorios
cd relatorios
echo $(date) > $nome
cat /proc/version >> $nome
cat /etc/shells >> $nome
echo $(uptime) >> $nome
segundos=$(date +%s)
echo $(($segundos / 3600)) >> $nome
