#!/bin/bash 
cd /var/www/html
> token.txt
> temp.txt
./jupyter_.sh & 
sleep 5
domain="http://ec2-54-188-96-149.us-west-2.compute.amazonaws.com:8888" #change your domain name here
jupyter notebook list | grep 8888 | sed 's/.*=//'  >> temp.txt 
pass=$(sed 's/:.*//' temp.txt)
x="$domain/?token=$pass"
echo $x>>token.txt

