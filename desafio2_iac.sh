#!/bin/bash

# Esse script tem como finalidade automatizar a criação de usuários,grupos de usuários, diretórios e as permissões dos usuários nesses diretórios 

# Nesta etapa estão os comandos para a criação de todos os diretórios necessários

echo "Criando os diretórios, por favor aguarde..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Nesta etapa estão os comandos para a criação dos grupos que necessitamos

echo "Criando grupos de usuários, por favor aguarde..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Nesta etapa estão os comandos para a criação de todos os usuários, sua home e sua senha padrão

echo "Criando os usuários, por favor aguarde..."

useradd carlos -m -c "Carlos nome completo" -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_ADM
useradd maria -m -c "Maria nome completo" -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_ADM 
useradd joao -m -c "João nome completo" -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_ADM
useradd debora -m -c "Debora nome completo" -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana nome completo" -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_VEN
useradd roberto -m -c "Roberto nome completo" -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_VEN
useradd josefina -m -c "Josefina nome completo" -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_SEC
useradd amanda -m -c "Amanda nome completo" -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_SEC
useradd rogerio -m -c "Rogerio nome completo" -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_SEC

echo "Gerando as permissões dos diretórios, por favor aguarde..."

# Nesta etapa estão os comandos que determinam o dono de cada diretório

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP VEN /ven
chown root:GRP_SEC /sec

# Nesta etapa estão os comandos que determinam as permissões de cada grupo de usuários

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Procedimento finalizado, obrigado!"

# Fim do script
