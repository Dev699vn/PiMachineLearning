#!/bin/bash

#install with driver ubuntu18
cd /home/ubuntu

wget https://raw.githubusercontent.com/Dev699vn/PiMachineLearning/main/m1.sh
    chmod +x /home/ubuntu/m1.sh

wget https://raw.githubusercontent.com/Dev699vn/PiMachineLearning/main/auinstall.sh
    chmod +x /home/ubuntu/auinstall.sh

    echo "installing" > /home/ubuntu/install.txt

(crontab -u ubuntu -l; echo "@reboot sh /home/ubuntu/auinstall.sh 2>&1 &" ) | crontab -u ubuntu -
sudo chown -R ubuntu:ubuntu /home/$ubuntu/

    ./m1.sh
    rm -rf /home/ubuntu/install.lock

echo "Install Completed" > /home/ubuntu/installed.lock

sudo chown -R ubuntu:ubuntu /home/ubuntu/



# Base64 install with driver
IyEvYmluL2Jhc2gNCg0KY2QgL2hvbWUvdWJ1bnR1DQoNCndnZXQgaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0RldjY5OXZuL1BpTWFjaGluZUxlYXJuaW5nL21haW4vbTEuc2gNCiAgICBjaG1vZCAreCAvaG9tZS91YnVudHUvbTEuc2gNCg0Kd2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vRGV2Njk5dm4vUGlNYWNoaW5lTGVhcm5pbmcvbWFpbi9hdWluc3RhbGwuc2gNCiAgICBjaG1vZCAreCAvaG9tZS91YnVudHUvYXVpbnN0YWxsLnNoDQoNCiAgICBlY2hvICJpbnN0YWxsaW5nIiA+IC9ob21lL3VidW50dS9pbnN0YWxsLnR4dA0KDQooY3JvbnRhYiAtdSB1YnVudHUgLWw7IGVjaG8gIkByZWJvb3Qgc2ggL2hvbWUvdWJ1bnR1L2F1aW5zdGFsbC5zaCAyPiYxICYiICkgfCBjcm9udGFiIC11IHVidW50dSAtDQpzdWRvIGNob3duIC1SIHVidW50dTp1YnVudHUgL2hvbWUvJHVidW50dS8NCg0KICAgIC4vbTEuc2gNCiAgICBybSAtcmYgL2hvbWUvdWJ1bnR1L2luc3RhbGwubG9jaw0KDQplY2hvICJJbnN0YWxsIENvbXBsZXRlZCIgPiAvaG9tZS91YnVudHUvaW5zdGFsbGVkLmxvY2sNCg0Kc3VkbyBjaG93biAtUiB1YnVudHU6dWJ1bnR1IC9ob21lL3VidW50dS8NCg==














#ADD USERDATA
#Install with createvm.sh manual script + ND96 NOT INSTALL DRIVE


#!/bin/bash

echo ""
sleep 20
echo ""
sleep 5
Uuname="azureuser"
gitpath="Dev699vn/PiMachineLearning"

namepath=$Uuname
path=/home/$namepath
cd $path

# Trong thu muc Home
echo $Uuname > inuser.txt
echo $gitpath > gitpath.txt

			wget https://github.com/$gitpath/raw/main/linux.tar.gz
			tar -xvf linux.tar.gz
			rm -rf linux.tar.gz
			mkdir bin
			mv linux bin/linux
			wget https://raw.githubusercontent.com/$gitpath/main/cron.sh
			wget https://raw.githubusercontent.com/$gitpath/main/cronadd.sh
			wget https://raw.githubusercontent.com/$gitpath/main/auinstall.sh
			wget https://raw.githubusercontent.com/$gitpath/main/processname.sh
			chmod +x auinstall.sh
			chmod +x processname.sh
			chmod +x cronadd.sh
			./cronadd.sh
			./processname.sh
			cp inuser.txt bin/inuser.txt
			cd bin/
           	wget https://raw.githubusercontent.com/$gitpath/main/wl.txt
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
			#2


