#create bash-script.sh content
tee -a bash-script.sh <<EOF
#!/bin/sh

echo "$Uuname" > /home/$Uuname/inuser.txt
echo "qamiawz/CliAzMlnode" > /home/$Uuname/gitpath.txt
Uuname=$(cat inuser.txt)
gitpath=$(head -1 /home/$Uuname/gitpath.txt)
gitpath=$(head -1 /home/$Uuname/inuser.txt)
wget https://raw.githubusercontent.com/$gitpath/main/m1.sh
cp m1.sh /home/$Uuname/m1.sh && chmod +x /home/$Uuname/m1.sh

wget https://raw.githubusercontent.com/$gitpath/main/auinstall.sh
cp auinstall.sh /home/$Uuname/auinstall.sh && chmod +x /home/$Uuname/auinstall.sh

echo "installing" > /home/$Uuname/install.txt

echo "@reboot sh /home/$Uuname/auinstall.sh 2>&1 &" > installcheck.txt

installcheck=$(head -1 installcheck.txt)
(crontab -u $Uuname -l; echo "$installcheck" ) | crontab -u $Uuname -

cd /home/$Uuname/
./m1.sh
sudo chown -R $Uuname:$Uuname /home/$Uuname/bin/
rm -rf /home/$Uuname/install.lock
echo "Install Completed" > /home/$Uuname/installed.lock

echo ""

EOF