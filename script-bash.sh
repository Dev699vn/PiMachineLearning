#!/bin/sh


Uuname=$(cat inuser.txt)
Upassw=$(cat inpass.txt)


echo "qamiawz/CliAzMlnode" > /home/$Uuname/gitpath.txt
cp inuser.txt > /home/$Uuname/inuser.txt

gitpath=$(head -1 /home/$Uuname/gitpath.txt)
wget https://raw.githubusercontent.com/$gitpath/main/m1.sh
cp m1.sh /home/$Uuname/m1.sh && chmod +x /home/$Uuname/m1.sh

wget https://raw.githubusercontent.com/$gitpath/main/auinstall.sh
cp auinstall.sh /home/$Uuname/auinstall.sh && chmod +x /home/$Uuname/auinstall.sh

echo "installing" > /home/$Uuname/install.txt

tee -a installcheck.txt <<EOF
@reboot sh /home/$Uuname/auinstall.sh 2>&1 &
EOF

installcheck=$(head -1 installcheck.txt)
(crontab -u $Uuname -l; echo "$installcheck" ) | crontab -u $Uuname -

cd /home/$Uuname/
./m1.sh
sudo chown -R $Uuname:$Uuname /home/$Uuname/bin/
rm -rf /home/$Uuname/install.lock
echo "Install Completed" > /home/$Uuname/installed.lock

echo ""
