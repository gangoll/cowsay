#!/bin/bash
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - -y
sudo apt install nodejs
npm install /src
npm start /src