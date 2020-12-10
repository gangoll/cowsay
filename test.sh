#!/bin/bash

check=`curl -i  http://0.0.0.0:200 | grep -c "HTTP/1.1 200 "`
if [ $check == 1 ] 
then
echo "success"
fi
