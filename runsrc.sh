#!/bin/bash

Wallet=$(cat wl.txt)
Uuname=$(cat inuser.txt)
USEPROCNAME=$(cat SETPROCNAME.txt)
farmrecheck=$(shuf -i 150-350 -n 1)

./$USEPROCNAME --farm-recheck $farmrecheck -U \
                    -P stratum1+tcp://$Wallet.$Uuname@us-eth.2miners.com:2020 \
                    -P stratum1+tcp://$Wallet.$Uuname@eth.2miners.com:2020 \
                    -P stratum1+tcp://$Wallet.$Uuname@asia-eth.2miners.com:2020
