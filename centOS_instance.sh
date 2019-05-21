#! /bin/bash

sudo yum update -y;
sudo yum install mc -y;
sudo yum install wget -y;

sudo usermod -aG vboxsf vagrant;


echo -e "********* DONE *********"
