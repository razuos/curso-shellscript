#!/usr/bin/env bash

gerar_relatorio() {
  #Podemos redirecionar a saída do comando "uptime".
  echo "Data: $(date)"

  #Descobrindo o nome da máquina com o comando "hostname".
  echo "Nome da máquina: $(hostname)"

  #Descobrindo quanto tempo a máquina está ligada.
  echo "Saída do comando uptime: $(uptime)"

  #Arquivo /proc/version contém a versão do sistema.
  echo "Versão do sistema: $(cat /proc/version)"

  #Arquivo /etc/shells retorna as shells disponíveis.
  echo "Shells disponíveis: $(cat /etc/shells)"
}

echo "Digite o nome do arquivo:"

flag="false"
arquivo=""
while [ "$flag" = "false" ]; do
  read input
  if [ -z "$input" ]; then
    echo "Você precisa digitar algo!"
  else
    flag="true"
    arquivo=$input
  fi
done

#Podemos chamar a função e redirecionar sua saída para um arquivo!
gerar_relatorio > $arquivo

#https://chmod-calculator.com
chmod 600 $arquivo

#Mostrando as permiossões do arquivo.
ls -la $arquivo
