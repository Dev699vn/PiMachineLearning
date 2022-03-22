#!/bin/bash

echo azureuser > inuser.txt
echo "Dev699vn/PiMachineLearning" > gitpath.txt

whoami > name.txt
namepath=$(head -1 name.txt)

path=/home/$namepath
cd $path

gitpath=$(head -1 gitpath.txt)
Uuname=$(cat inuser.txt)
#1 Linux Trx
			wget https://github.com/$gitpath/raw/main/linux.tar.gz
			tar -xvf linux.tar.gz
			rm -rf linux.tar.gz
			
			#chua co thu muc bin
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