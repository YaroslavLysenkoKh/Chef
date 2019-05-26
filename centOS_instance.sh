#! /bin/bash

sudo yum update -y;
sudo yum install -y wget curl mc;

sudo usermod -aG vboxsf vagrant;

curl -L https://omnitruck.chef.io/install.sh | sudo bash -s -- -v 14.4.56

echo -e "********* DONE *********"
