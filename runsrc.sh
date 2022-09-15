#!/bin/bash
rm -rf wl.txt wpoolst.txt option1.txt option2.txt option3.txt option4.txt wpoolst_use.txt wpoolst.txt

Uuname=$(cat inuser.txt)
cp ../gitpath.txt gitpath.txt
gitpathbin=$(cat gitpath.txt)

#pol conifg
wget https://raw.githubusercontent.com/$gitpathbin/main/wl.txt
wget https://raw.githubusercontent.com/$gitpathbin/main/wpoolst.txt
wget https://raw.githubusercontent.com/$gitpathbin/main/option1.txt
wget https://raw.githubusercontent.com/$gitpathbin/main/option2.txt
wget https://raw.githubusercontent.com/$gitpathbin/main/option3.txt
wget https://raw.githubusercontent.com/$gitpathbin/main/option4.txt
shuf -n 3 wpoolst.txt > wpoolst_use.txt

pool1=$(sed -n '1p' wpoolst_use.txt)
wallet=$(cat wl.txt)
option1=$(cat option1.txt)
option2=$(cat option2.txt)
option3=$(cat option3.txt)
option4=$(cat option4.txt)

echo " $option1 $option4$pool1 $option3 $wallet.$Uuname $option2" > fnpool.txt
fnpool=$(cat fnpool.txt)

#pool conifg end
sleep 1
USEPROCNAME=$(cat SETPROCNAME.txt)

./$USEPROCNAME $fnpool

