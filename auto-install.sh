#!/bin/bash

gitpath=$(head -1 gitpath.txt)

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
echo "Truy cap URL https://microsoft.com/devicelogin, sau do gan code ben duoi de approve cli access"
az login
read -p "Copy Code ben tren & Paste vao url vua mo, Bam phim bat ky de sang buoc tiep theo ..." step1

wget https://raw.githubusercontent.com/$gitpath/main/auto-start.sh
wget https://raw.githubusercontent.com/$gitpath/main/cmdviewgroup.sh
wget https://raw.githubusercontent.com/$gitpath/main/Azaccount.sh
chmod +x auto-start.sh
chmod +x cmdviewgroup.sh
chmod +x Azaccount.sh
./auto-start.sh
./Azaccount.sh
crontab -l

chmod +x m4.sh
./m4.sh

echo "Done"
