#!/bin/bash

sudo apt-get update

sudo apt install -y docker.io
sudo systemctl enable docker --now
sudo systemctl status docker --now
sudo usermod -aG docker $USER
docker run helloworld
sudo su
sudo systemctl start docker
docker pull hello-world
docker ps

docker run --name mysql-server  \
-p 3306:3306 -p 33060:33060  \
-e MYSQL_ROOT_HOST='%' -e MYSQL_ROOT_PASSWORD='123456'   \
-d mysql/mysql-server:latest

docker start mysql-server
docker ps 
