#!/bin/bash

gitpath=$(head -1 gitpath.txt)

wget https://raw.githubusercontent.com/$gitpath/main/createvm.sh
wget https://raw.githubusercontent.com/$gitpath/main/vmcreate.sh
wget https://raw.githubusercontent.com/$gitpath/main/list_region_createvm.txt

cat list_region_createvm.txt | awk 'BEGIN{srand();}{print rand()"\t"$0}' | sort -k1 -n | cut -f2- > list_region_createvm_full.txt

# Select number of node will be create (shuf -n *)
shuf -n 4 list_region_createvm_full.txt > list_region_createvm_use.txt
rm -rf list_region_createvm_full.txt
    chmod +x createvm.sh
    chmod +x vmcreate.sh
echo > GroupResource.txt
./script-bash-default.sh
echo "File script-bash.sh has been generated"
sleep 2
    rm -rf script-bash-default.sh
    history -c

echo "CAI DAT CLI HOAN THANH, CHO REBOOT VA LOGIN VAO LAI"

# Reboot for schedule reboot 7200
    sudo reboot
