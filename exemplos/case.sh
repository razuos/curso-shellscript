#!/bin/bash

echo "Os carros são: Chevrolet Pagani Volkswagen Audi BMW"
echo "Digite um carro para aluguel:"

read carro

case $carro in

 "Chevrolet")
  echo 'R$10 por km.'
 ;;
 "Pagani")
  echo 'R$200 por km.'
 ;;
 "Volkswagen")
  echo 'R$20 por km.'
 ;;
 "Audi")
  echo 'R$50 por km.'
 ;;
 "BMW")
  echo 'R$100 por km.'
 ;;

 *)
  echo "Me desculpe, não tenho $carro para alugar!"
 ;;

esac
