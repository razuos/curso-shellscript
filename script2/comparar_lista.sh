#!/usr/bin/env bash

#Podemos especificar a lista utilizando uma expansão direto no for:
for num in {0..15}; do
  #Utilizamos as mesmas comparações do script anterior, só modificamos
  #os 'echo's
  if [ "$num" -gt 10 ]; then
    echo "O número $num é maior que 10!"
  fi
  if [ "$num" -lt 10 ]; then
    echo "O número $num é menor que 10!"
  fi
  if [ "$num" -gt 11 ] && [ "$num" -lt 20 ]; then
    echo "O número $num está entre 11 e 20!"
  fi
done
