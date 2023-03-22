#!/bin/bash

echo "atualizando servidor"
apt-get update && apt-get upgrade -y

echo "instalando pacotes"
apt-get install apache2 -y
apt-get install unzip -y

echo "copiando os arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip main.zip
cd linux-site-dio-main
cp -R * /var/WWW/html/





