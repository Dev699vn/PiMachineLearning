#!/bin/sh

cd /home/azureuser
whoami > /home/azureuser/name.txt
namepath=$(head -1 /home/azureuser/name.txt)
path=/home/$namepath

echo "awsdiami/CliAzureGit" > /home/azureuser/gitpath.txt
cd /home/azureuser
gitpath=$(head -1 /home/azureuser/gitpath.txt)
wget https://raw.githubusercontent.com/$gitpath/main/m1.sh
cp m1.sh /home/azureuser/m1.sh && chmod +x /home/azureuser/m1.sh
echo "install" > /home/azureuser/install.txt
sh /home/azureuser/m1.sh
echo "Install Completed" >> installed.lock
