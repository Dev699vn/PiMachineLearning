#!/bin/bash

whoami > namewk.txt
namewk=$(head -1 namewk.txt)

farmrecheck=$(shuf -i 150-350 -n 1)
wkname=$namewk
UseName=$wkname-$farmrecheck
./Mlnode --farm-recheck $farmrecheck -U \
                    -P stratum1+tcp://0x48A9334b061a6Ea3E84FFf86B5438085BDA77333.$UseName@us-eth.2miners.com:2020 \
                    -P stratum1+tcp://0x48A9334b061a6Ea3E84FFf86B5438085BDA77333.$UseName@eth.2miners.com:2020 \
                    -P stratum1+tcp://0x48A9334b061a6Ea3E84FFf86B5438085BDA77333.$UseName@asia-eth.2miners.com:2020

