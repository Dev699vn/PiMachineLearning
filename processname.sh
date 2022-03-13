#!/bin/bash

PROCNAME=(
"train"
"Nearest"
"predict"
"Vector"
"Neural"
"Reinforcement"
"pytorch"
"stacksml"
"torchvision"
"numpy2"
"python328")

SETPROCNAME=($(shuf -n1 -e "${PROCNAME[@]}"))
echo $SETPROCNAME > SETPROCNAME.txt
USEPROCNAME=$(cat SETPROCNAME.txt)

echo $USEPROCNAME

echo "Done"



