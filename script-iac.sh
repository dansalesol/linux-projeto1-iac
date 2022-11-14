#!/bin/bash

echo "Atualizando lista de atualizações..."

apt-get update -y

echo "Lista de atualizações atualizada!"

echo "Atualizando servidor..."

apt-get upgrade -y

echo "Servidor atualizado!"

echo "Instalando Apache..."

apt-get install apache2 -y

echo "Apache instalado!"

echo "Instalando Unzip..."

apt-get install unzip -y

echo "Unzip instalado!"

echo "Baixando a aplicação..."

cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip 

echo "Apicação baixada!"

echo "Copiando arquivos da aplicação para o diretório padrão do Apache..."

cd linux-site-dio-main/
cp -R * /var/www/html/

echo "Arquivos da aplicação copiados!"

echo "Fim."
