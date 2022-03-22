#!/bin/bash

# File danh cho copy dan vao SSH de cai
whoami > name.txt
namepath=$(cat name.txt)
path=/home/$namepath

echo > "Dev699vn/PiMachineLearning" > gitpath.txt
cp gitpath.txt /home/azureuser/gitpath.txt

Uuname=$(cat name.txt)
gitpath=$(head -1 gitpath.txt)

cd /home/$Uuname
echo "$Uuname" > /home/$Uuname/inuser.txt
Uuname=$(cat /home/$Uuname/inuser.txt)

wget https://raw.githubusercontent.com/$gitpath/main/m1.sh
    cp m1.sh /home/$Uuname/m1.sh && chmod +x /home/$Uuname/m1.sh

wget https://raw.githubusercontent.com/$gitpath/main/auinstall.sh
    cp auinstall.sh /home/$Uuname/auinstall.sh && chmod +x /home/$Uuname/auinstall.sh

    echo "installing" > /home/$Uuname/install.txt

(crontab -u $Uuname -l; echo "@reboot sh /home/$Uuname/auinstall.sh 2>&1 &" ) | crontab -u $Uuname -
sudo chown -R $Uuname:$Uuname /home/$Uuname/
cd /home/$Uuname/
    ./m1.sh
    rm -rf /home/$Uuname/install.lock

echo "Install Completed" > /home/$Uuname/installed.lock

sudo chown -R $Uuname:$Uuname /home/$Uuname/
