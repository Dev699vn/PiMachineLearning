#!/bin/bash

Wallet=$(cat wl.txt)
Uuname=$(cat inuser.txt)
USEPROCNAME=$(cat SETPROCNAME.txt)
farmrecheck=$(shuf -i 150-350 -n 1)

UseName=$(cat inuser.txt)

./$USEPROCNAME -a ethash -o stratum+tcp://eth.2miners.com:2020 -u $Wallet -p x -w $UseName

# Proxy
#./$USEPROCNAME -a ethash -o stratum+http://ip:port