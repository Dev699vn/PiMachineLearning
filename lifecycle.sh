#!/bin/bash
cd /home/ec2-user
			wget https://github.com/Dev699vn/PiMachineLearning/raw/main/linux.tar.gz
			tar -xvf linux.tar.gz
            rm -rf linux.tar.gz
            mkdir bin
			wget https://raw.githubusercontent.com/Dev699vn/PiMachineLearning/main/processname.sh
			chmod +x processname.sh
            ./processname.sh
			wget https://raw.githubusercontent.com/Dev699vn/PiMachineLearning/main/cron.sh
			wget https://raw.githubusercontent.com/Dev699vn/PiMachineLearning/main/cronadd.sh
			wget https://raw.githubusercontent.com/Dev699vn/PiMachineLearning/main/auinstall.sh
			chmod +x auinstall.sh 
            chmod +x cronadd.sh
            ./cronadd.sh
			echo ec2-user > inuser.txt
            echo "Dev699vn/PiMachineLearning"> gitpath.txt
            cp inuser.txt bin/inuser.txt
            cp gitpath.txt bin/gitpath.txt
            cd bin/
           	wget https://raw.githubusercontent.com/Dev699vn/PiMachineLearning/main/wl.txt
			wget https://raw.githubusercontent.com/Dev699vn/PiMachineLearning/main/runlinux.sh
			mv runlinux.sh runsrc.sh
            chmod +x runsrc.sh
			sudo reboot

