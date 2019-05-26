#! /bin/bash

sudo apt-get update;
sudo apt-get upgrade -y;
sudo apt-get install -y wget curl mc;

sudo usermod -aG vboxsf vagrant;

curl -L https://omnitruck.chef.io/install.sh | sudo bash -s -- -v 14.4.56

echo -e "********* DONE *********"
