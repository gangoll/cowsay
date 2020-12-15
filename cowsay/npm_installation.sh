#!/bin/bash
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - 
sudo apt update
sudo apt install nodejs -y
sudo apt install npm -y
sudo snap install aws-cli --classic
sudo aws s3 sync s3://cowsay-src1 /tmp/src
cd /tmp/src
sudo apt install unzip
sudo unzip src.zip 
cd src/
npm install
npm start






