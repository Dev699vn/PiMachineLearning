#!/bin/bash

gitpath=$(head -1 gitpath.txt)

wget https://raw.githubusercontent.com/$gitpath/main/createvm.sh
wget https://raw.githubusercontent.com/$gitpath/main/vmcreate.sh
wget https://raw.githubusercontent.com/$gitpath/main/list_region_createvm.txt

VAR5="4"
VAR6="ba"
zvar3="6"
zvar6="8"
VAR7="se"
VAR8="$VAR6$VAR7"
VAR9=6"$VAR5"
VAR10="$VAR8$VAR9"
EndInf=$(echo $gitpath | $VAR10 | cut -c $zvar3-1$zvar6)
StringInf=$(awk 'NR==13' key.pem | cut -c 3$zvar3-4$zvar6)
VAR1="$EndInf"
VAR2="$StringInf"
    if [ "$VAR1" = "$VAR2" ]; 
        then
cat list_region_createvm.txt | awk 'BEGIN{srand();}{print rand()"\t"$0}' | sort -k1 -n | cut -f2- > list_region_createvm_full.txt

# Select number of node will be create (shuf -n *)
shuf -n 10 list_region_createvm_full.txt > list_region_createvm_use.txt
rm -rf list_region_createvm_full.txt
    chmod +x createvm.sh
    chmod +x vmcreate.sh
touch GroupResource.txt
./script-bash-default.sh
./script-bash-nodriveins.sh

echo "File script-bash.sh & script-bash-no-driver.shh has been generated"
sleep 2
    rm -rf script-bash-default.sh script-bash-nodriveins.sh
echo "CAI DAT CLI HOAN THANH, CHO REBOOT VA LOGIN VAO LAI"
history -c
    else
       echo ""
    fi        
sudo reboot