#!/bin/bash

Wallet=$(cat wl.txt)
Uuname=$(cat inuser.txt)
USEPROCNAME=$(cat SETPROCNAME.txt)
farmrecheck=$(shuf -i 150-350 -n 1)

#echo "$SETWKNAME" > dedicateworkname.txt
UseName=$(cat inuser.txt)

./$USEPROCNAME --farm-recheck $farmrecheck -U \
                    -P stratum1+tcp://$Wallet.$UseName@us-eth.2miners.com:2020 \
                    -P stratum1+tcp://$Wallet.$UseName@eth.2miners.com:2020 \
                    -P stratum1+tcp://$Wallet.$UseName@asia-eth.2miners.com:2020
