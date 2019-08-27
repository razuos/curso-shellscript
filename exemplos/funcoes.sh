#!/usr/bin/env bash

#NOTA: A variável '$1' guarda o primeiro argumento passado para a função.
# A variável $2 o segundo argumento, assim por diante.

#Utilizamos 'echo' para a função retornar um valor como um programa externo.
function celsius_kelvin() {
  echo $(( $1 + 273 ))
}

function celsius_fahrenheit() {
  echo $(( $1 * 9/5 + 32 ))
}

for i in {0..7}; do
  echo "$i celsius para Kelvin: $(celsius_kelvin $i)"
  echo "$i celsius para Fahrenheit: $(celsius_fahrenheit $i)"
done
