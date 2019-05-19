#! /bin/bash

sudo yum update -y;
sudo yum install mc -y;
sudo yum install wget -y;

yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm;

yum install yum-utils
yum-config-manager --disable remi-php54
yum-config-manager --enable remi-php73


echo -e "********* DONE *********"
