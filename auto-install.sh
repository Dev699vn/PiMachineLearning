#!/bin/bash

gitpath=$(head -1 gitpath.txt)

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
echo "Truy cap URL https://microsoft.com/devicelogin"
az login
#read -p "Copy Code ben tren & Paste vao url vua mo, Bam phim bat ky de sang buoc tiep theo ..." step1

wget https://raw.githubusercontent.com/$gitpath/main/auto-start.sh
wget https://raw.githubusercontent.com/$gitpath/main/cmdviewgroup.sh
wget https://raw.githubusercontent.com/$gitpath/main/Azaccount.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-del.sh
wget https://raw.githubusercontent.com/$gitpath/main/script-bash-default.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-run-custome.sh
wget https://raw.githubusercontent.com/$gitpath/main/ins_script.sh
wget https://raw.githubusercontent.com/$gitpath/main/script-bash-nodriveins.sh
wget https://raw.githubusercontent.com/$gitpath/main/creatend96.sh
wget https://raw.githubusercontent.com/$gitpath/main/createvm12.sh
wget https://raw.githubusercontent.com/$gitpath/main/createvm24.sh
wget https://raw.githubusercontent.com/$gitpath/main/update.sh
mkdir -p smarty
mkdir -p smarty/_temp/
cd smarty/
wget https://raw.githubusercontent.com/$gitpath/main/smarty/bot-create.sh
wget https://raw.githubusercontent.com/$gitpath/main/smarty/bot-control-stop.sh
wget https://raw.githubusercontent.com/$gitpath/main/smarty/bot-control-deallocate.sh
chmod +x bot-create.sh bot-control-stop.sh bot-control-deallocate.sh
cd ..

    chmod +x script-bash-default.sh
    chmod +x auto-start.sh
    chmod +x cmdviewgroup.sh
    chmod +x Azaccount.sh
    chmod +x auto-del.sh
    chmod +x script-bash-nodriveins.sh
    chmod +x creatend96.sh
    chmod +x update.sh
    chmod +x createvm24.sh
    chmod +x createvm12.sh

    ./auto-start.sh
    ./Azaccount.sh
    rm -rf Azaccount.sh
    crontab -l

    chmod +x m4.sh
    ./m4.sh

    history -c

