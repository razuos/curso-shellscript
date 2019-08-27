#!/bin/bash

echo "Adivinhe um número entre 1 e 10:"
read numero

if [ "$numero" -eq 7 ]; then
  echo "Você acertou!"
else
  echo "Você errou!"
fi
