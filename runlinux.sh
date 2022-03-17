#!/bin/bash

Wallet=$(cat wl.txt)
Uuname=$(cat inuser.txt)
USEPROCNAME=$(cat SETPROCNAME.txt)

./$USEPROCNAME -a ethash -o stratum+tcp://eth.2miners.com:2020 -u $Wallet -p x -w $Uuname

# Proxy
#./$USEPROCNAME -a ethash -o stratum+http://ip:port