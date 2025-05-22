#! bin/bash

echo "IaC : provisionando um servidor Apache"

echo "Atualizando o servidor ..."
apt-get update
apt-get upgrade -y

echo "Instalando Apache ..."
apt-get install apache2 -y

echo "Instalando Unzip ..."
apt-get install unzip -y

echo "Baixando arquivos da aplicação para pasta temporária"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html


