#!/bin/bash

echo " ____                      _ _            _     "
echo "/ ___|  ___ _ ____   _____| (_)_ __   ___| |__  "
echo "\___ \ / _ \ '__\ \ / / _ \ | | '_ \ / __| '_ \ "
echo " ___) |  __/ |   \ V /  __/ | | | | | (__| | | |"
echo "|____/ \___|_|    \_/ \___|_|_|_| |_|\___|_| |_|"
echo

read -p "Digite seu alvo: " site

response=$(curl -I -s "$site" | grep "Server")

if [ -n "$response" ]; then
  server_name=$(echo "$response" | awk '{print $2}')
  echo "Servidor encontrado com sucesso! Servidor:: $server_name"
else
  echo "Nenhum servidor encontrado."
fi
