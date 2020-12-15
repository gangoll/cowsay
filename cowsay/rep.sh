#!/bin/bash
sed -i "s/ACCESS/"$( head -1 access_code)"/g"  deploy.tf
sed -i "s/CODE/$(sed -n '2p' access_code)/g" deploy.tf





