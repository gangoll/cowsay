#!/bin/bash
sudo sed -i "s/ip/$(head -1 /tmp/to-replace)/g" /tmp/nginx.conf
sudo cp -r /tmp/nginx.conf /opt/bitnami/nginx/conf/nginx.conf
sleep 5
sudo /opt/bitnami/ctlscript.sh restart nginx

