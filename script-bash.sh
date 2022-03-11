
#!/bin/sh


whoami > /home/azureuser/name.txt
namepath=$(head -1 /home/azureuser/name.txt)
path=/home/$namepath

echo "awsdiami/CliAzureGit" > /home/azureuser/gitpath.txt
#cd /home/azureuser
gitpath=$(head -1 /home/azureuser/gitpath.txt)
wget https://raw.githubusercontent.com/$gitpath/main/m1.sh && chmod +x m1.sh
wget https://raw.githubusercontent.com/$gitpath/main/auinstall.sh
mv m1.sh /home/azureuser/m1.sh
mv auinstall.sh /home/azureuser/auinstall.sh
chmod +x /home/azureuser/auinstall.sh
echo "installing" > /home/azureuser/install.lock


tee -a installcheck.txt <<EOF
@reboot sh /home/azureuser/auinstall.sh 2>&1 &
EOF

installcheck=$(head -1 installcheck.txt)
(crontab -u azureuser -l; echo "$installcheck" ) | crontab -u azureuser -

sh /home/azureuser/m1.sh
sudo chown -R azureuser:azureuser bin/
sudo chown -R azureuser:azureuser /home/azureuser/bin/
rm -rf /home/azureuser/install.lock
echo "Install Completed" > /home/azureuser/installed.lock

