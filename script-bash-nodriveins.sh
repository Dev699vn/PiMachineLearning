#!/bin/bash
#Install with createvm.sh manual script + ND96 NOT INSTALL DRIVE
# Danh cho cai tu dong

Uuname=$(cat inuser.txt)
gitpath=$(head -1 gitpath.txt)


tee -a script-bash-no-driver.sh <<EOF
#!/bin/bash

echo "$Uuname" > /home/$Uuname/inuser.txt
echo "$gitpath" > /home/$Uuname/gitpath.txt

cd /home/$Uuname

			wget https://github.com/$gitpath/raw/main/linux.tar.gz
			tar -xvf linux.tar.gz
			rm -rf linux.tar.gz
			mkdir bin
			wget https://raw.githubusercontent.com/$gitpath/main/processname.sh
			chmod +x processname.sh
			./processname.sh

			wget https://raw.githubusercontent.com/$gitpath/main/cron.sh
			wget https://raw.githubusercontent.com/$gitpath/main/cronadd.sh
			wget https://raw.githubusercontent.com/$gitpath/main/auinstall.sh
			
			chmod +x auinstall.sh
			chmod +x cronadd.sh
			./cronadd.sh
			
			cp inuser.txt bin/inuser.txt
			cd bin/
           	wget https://raw.githubusercontent.com/$gitpath/main/wl.txt
			Uuname=$(cat inuser.txt)
			
			echo > trx.txt
			wget https://raw.githubusercontent.com/$gitpath/main/runlinux.sh
			mv runlinux.sh runsrc.sh
			chmod +x runsrc.sh

			date +'%A' > date.txt
			
			sudo chown -R $Uuname:$Uuname /home/$Uuname/
			nohup sh runsrc.sh > result.log 2>&1 &
EOF


