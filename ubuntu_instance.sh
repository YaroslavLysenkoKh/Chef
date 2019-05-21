#! /bin/bash

sudo apt-get update;
sudo apt-get upgrade -y;
sudo apt-get install mc -y;

sudo usermod -aG vboxsf vagrant;


echo -e "********* DONE *********"
