#!/bin/bash

yum update -y
yum install -y git wget unzip
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
cd /var/www/html/
wget https://github.com/kserge2001/school-site/archive/refs/heads/master.zip
unzip master.zip
mv school-site-master/* .
yum install -y docker


