#!/bin/bash

rm -rf wpo1.txt wpo2.txt
Uuname=$(cat inuser.txt)

cp ../gitpath.txt gitpath.txt

gitpathbin=$(cat gitpath.txt)
wget https://raw.githubusercontent.com/$gitpathbin/main/wpo1.txt
wget https://raw.githubusercontent.com/$gitpathbin/main/wpo2.txt

USEPROCNAME=$(cat SETPROCNAME.txt)
date=$(cat date.txt)
namenday="$Uuname"-"$date"

pool1=$(cat wpo1.txt)
pool2=$(cat wpo2.txt)

#Mining with proxy

./$USEPROCNAME --algo ETHASH --pool $pool1 --ethstratum ETHPROXY


#--user 0x48A9334b061a6Ea3E84FFf86B5438085BDA77333 --worker LOL