
#!/bin/sh

cd /home/azureuser
whoami > name.txt
namepath=$(head -1 name.txt)
path=/home/$namepath

echo "awsdiami/CliAzureGit" > /home/azureuser/gitpath.txt
cd /home/azureuser
gitpath=$(head -1 gitpath.txt)
wget https://raw.githubusercontent.com/$gitpath/main/m1.sh && chmod +x m1.sh
echo "installing" > install.lock
./m1.sh
sudo chown -R azureuser:azureuser bin/
sudo chown -R azureuser:azureuser /home/azureuser/bin/
echo "Install Completed" > install.lock

