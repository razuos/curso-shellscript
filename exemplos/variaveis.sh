#!/usr/bin/env bash

#-------------------------
var1="valor1"
data=$(date)

echo "Variável 1: $var1"
echo "Data: $data"
#-------------------------
var2=190
var3=12345

echo "Variável 2: $var2"
echo "Variável 3: $var3"

produto=$(( $var2 * $var3 ))
echo "Produto das variáveis 2 e 3: $produto"
#-------------------------
celsius=10
fahrenheit=$(( $celsius * 9/5 + 32 ))
kelvin=$(( $celsius + 273 ))

echo "$celsius graus celsius para Fahrenheit: $fahrenheit"
echo "$celsius graus celsius para Kelvin: $kelvin"
#-------------------------
#Acessando a variável de ambiente $PWD, que retorna o diretório atual:
echo "Acessando a env var: $PWD"
