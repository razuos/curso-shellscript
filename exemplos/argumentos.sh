#!/usr/bin/env bash

function name() {
  echo "Primeiro argumento passado para a função: $1"
  echo "Segundo argumento passado para a função: $2"
  echo "Todos argumentos passados para a função: $@"
}

echo "Primeiro argumento: $1"
echo "Segundo argumento: $2"
echo "-------------------------"
echo "Todos argumentos: $@"
echo "-------------------------"

name $2 $1
