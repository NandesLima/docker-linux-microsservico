# docker-linux-microsservico
Último desafio da DIO do Bootcamp Linux Experience


## CONSIDERAÇÕES GERAIS SOBRE A ATIVIDADE: 
Pra essa atividade foi usado o Kali instalado em máquina virtual, 
porém de forma local, e não na nuvem. Não foi possível fazer na AWS.
Pra simular o acesso remoto, foi usado o Putty.

## ATIVIDADES REMOTAS (pelo localhost)]:

### update do sistema
sudo apt-get update
-----

## INSTALAÇÃO DO DOCKER

### Comandos gerais para a instalação e eexecução do docker
sudo apt install -y docker.io
sudo systemctl enable docker --now
sudo systemctl status docker --now
sudo usermod -aG docker $USER
docker run helloworld
sudo su
sudo systemctl start docker
docker pull hello-world
docker ps

## O MYSQL - INSTALAÇÃO
### Fazendo a instalação do mysql
docker run --name mysql-server  \
-p 3306:3306 -p 33060:33060  \
-e MYSQL_ROOT_HOST='%' -e MYSQL_ROOT_PASSWORD='123456'   \
-d mysql/mysql-server:latest

docker start mysql-server
docker ps 


## O DB - INSERÇÕES E CONSULTAS

A criação do banco de dados, as inserções de dados e 
as consultas foram feitas pela linha de comando.


## REMOÇÃO DO DOCKER
Por fim, a remoção do docker
docker rm mysql-server


## DOCKERFILE
FROM mysql:5.7

### Adicionando os scripts SQL para serem executados na criação do banco
COPY ./db/ /docker-entrypoint-initdb.d/

## CRIANDO O DB
$ sudo docker build -t mydb-db .

## SCRIPT DE CRRIAÇÃO DAS TABELAS:
não publicar

## Docker ps: 
Id do conteiner removida
