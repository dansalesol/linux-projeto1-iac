#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos de usuários criados!"

echo "Específicando permissões dos diretórios..."

chmod 777 /publico/
chmod 070 /adm/
chmod 070 /ven/
chmod 070 /sec/

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Permissões dos diretórios específicadas!"

echo "Criando usuários e adicionado-os aos grupos..."

useradd carlos -c "Carlos" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');") -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');") -G GRP_ADM
useradd joao -c "joao" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');") -G GRP_ADM
useradd debora -c "Debora" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');") -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');") -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');") -G GRP_VEN
useradd josefina -c "Josefina" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');") -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');") -G GRP_SEC
useradd rogerio -c "Rogério" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');") -G GRP_SEC

echo "Usuários criados e adicionados aos grupos!"

echo "Fim."
