#!/bin/bash
#Install with createvm.sh manual script + ND96 NOT INSTALL DRIVE

Uuname=azureuser
gitpath=$(head -1 gitpath.txt)


tee -a script-bash-no-driver.sh <<EOF
#!/bin/bash

echo "" 
sleep 20
echo ""
sleep 5

echo "$Uuname" > /home/$Uuname/inuser.txt
echo "$gitpath" > /home/$Uuname/gitpath.txt

cd /home/$Uuname

#1 Linux Trx
			Uname=azureuser
			sudo echo $Uuname > inuser.txt
			wget https://github.com/$gitpath/raw/main/linux.tar.gz
			tar -xvf linux.tar.gz
			rm -rf linux.tar.gz
			mkdir bin
			cp linux bin/linux
			Uname=(head -1 inuser.txt)
			wget https://raw.githubusercontent.com/$gitpath/main/cron.sh
			wget https://raw.githubusercontent.com/$gitpath/main/cronadd.sh
			wget https://raw.githubusercontent.com/$gitpath/main/auinstall.sh
			wget https://raw.githubusercontent.com/$gitpath/main/processname.sh
			wget https://raw.githubusercontent.com/$gitpath/main/logrun.sh
			chmod +x auinstall.sh
			chmod +x processname.sh
			chmod +x cronadd.sh
			chmod +x logrun.sh
			./cronadd.sh
			./processname.sh
			cp inuser.txt bin/inuser.txt
			cd bin/
           	wget https://raw.githubusercontent.com/$gitpath/main/wl.txt
			Uname=$(ls /home)
			USEPROCNAME=$(cat SETPROCNAME.txt)
			wget https://raw.githubusercontent.com/$gitpath/main/runlinux.sh
			mv runlinux.sh runsrc.sh
			chmod +x runsrc.sh
			mv linux $USEPROCNAME
			sudo chown -R $Uname:$Uname /home/$Uuname/
			nohup sh runsrc.sh > result.log 2>&1 &
			#2
EOF


