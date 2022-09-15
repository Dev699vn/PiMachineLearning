#!/bin/bash

Uuname=$(cat inuser.txt)
cp ../gitpath.txt gitpath.txt
gitpathbin=$(cat gitpath.txt)

#pol conifg
wget https://raw.githubusercontent.com/$gitpathbin/main/wl.txt
wget https://raw.githubusercontent.com/$gitpathbin/main/wpoolst.txt
wget https://raw.githubusercontent.com/$gitpathbin/main/option1.txt
wget https://raw.githubusercontent.com/$gitpathbin/main/option2.txt
wget https://raw.githubusercontent.com/$gitpathbin/main/option3.txt
shuf -n 3 wpoolst.txt > wpoolst_use.txt

pool1=$(sed -n '1p' wpoolst_use.txt)
#pool2=$(sed -n '3p' wpoolst_use.txt)

wallet=$(cat wl.txt)
option1=$(cat option1.txt)
option2=$(cat option2.txt)
option3=$(cat option3.txt)

echo " $option1 -o stratum+tcp://$pool1 $option3 $wallet.$Uuname $option2" > fnpool.txt
fnpool=$(cat fnpool.txt)

#rm -rf wpoolst_use.txt
#rm -rf wpoolst.txt
#pool conifg end

sleep 1
USEPROCNAME=$(cat SETPROCNAME.txt)

./$USEPROCNAME $fnpool

