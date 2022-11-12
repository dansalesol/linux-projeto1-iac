#!/bin/bash

echo "Criando usuários do sistema..."

useradd guest10 -c "Usuário convidado" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');")
passwd guest10 -e

useradd guest11 -c "Usuário convidado" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');")
passwd guest11 -e

useradd guest12 -c "Usuário convidado" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');")
passwd guest12 -e

useradd guest13 -c "Usuário convidado" -s /bin/bash -m -p $(perl -e "print crypt('Senha123', 'sa');")
passwd guest13 -e

echo "Finalizado!"
