#!/usr/bin/env bash

#Utilizado para o usuário saber qual tipo de dado ele precisa digitar.
echo "Digite um número:"

#Lê a entrada do usuário e guarda na variável $num.
read num

#O comando 'exit' sai do script.
if [ -z "$num" ]; then
  echo "Você precisa digitar algo!"
  exit
fi

#Caso mais avançado: checar se a variável é um número.
#Expressão regular:
# re='^[0-9]+$'
#Utilizo dois [] em conjunto com o comparador =~ para utilizar expressões regulares.
# if ! [[ "$num" =~ $re ]] ; then
#    echo "Você precisa digitar um número!"
#    exit
# fi

if [ "$num" -gt 10 ]; then
  echo "Você digitou um número maior que 10!"
fi
if [ "$num" -lt 10 ]; then
  echo "Você digitou um número menor que 10!"
fi
if [ "$num" -gt 11 ] && [ "$num" -lt 20 ]; then
  echo "Você digitou um número entre 11 e 20!"
fi

#Nota: é boa prática utilizar "" em volta de variáveis que serão preenchidas por uma entrada de usuário.
#Assim, se a variável for vazia, uma string vazia será utilizada, e não irá gerar erros.
