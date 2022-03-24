#!/bin/bash
#Install with createvm.sh manual script + ND96 NOT INSTALL DRIVE
# Danh cho cai tu dong

#Uuname="azureuser"
gitpath="Dev699vn/PiMachineLearning"

namepath=$Uuname
Uuname=$(cat inuser.txt)
gitpath=$(head -1 gitpath.txt)

cd /home/$Uuname

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




