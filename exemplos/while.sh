#!/bin/bash

#Flag serve para sair do loop quando algo for escrito
flag=false

while [ "$flag" = "false" ]; do
  echo "Digite alguma coisa"
  read entrada
  if ! [ -z "$entrada" ]; then
    flag=true
    echo "Você digitou: $entrada"
  fi
done
