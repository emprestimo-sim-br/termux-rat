#!/bin/bash

print_green() {
    echo -e "\033[0;32m$1\033[0m"
}

print_green "Iniciando a instalação das dependências..."

apt update > /dev/null
apt install -y python3 > /dev/null
print_green "Python3 instalado com sucesso."

apt install -y python3-pip > /dev/null
print_green "pip3 instalado com sucesso."

pip3 install telepot > /dev/null
print_green "telepot instalado com sucesso."

print_green "Executando o script.py..."
python3 painel.py

rm -rf /var/log/apt/*
print_green "Logs limpos."

print_green "Instalação concluída."