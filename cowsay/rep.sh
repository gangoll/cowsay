#!/bin/bash
sed -i "s/^/"$( head -1 access_code)"/g"  deploy.tf
sed -i "s/!/$(sed -n '2p' access_code)/g" deploy.tf





