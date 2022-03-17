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

    chmod +x script-bash-default.sh
    chmod +x auto-start.sh
    chmod +x cmdviewgroup.sh
    chmod +x Azaccount.sh
    chmod +x auto-del.sh

    ./auto-start.sh
    ./Azaccount.sh
    rm -rf Azaccount.sh
    crontab -l

    chmod +x m4.sh
    ./m4.sh

    history -c

