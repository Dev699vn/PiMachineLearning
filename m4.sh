#!/bin/bash

gitpath=$(head -1 gitpath.txt)

wget https://raw.githubusercontent.com/$gitpath/main/n6.sh
wget https://raw.githubusercontent.com/$gitpath/main/vmcreate.sh
wget https://raw.githubusercontent.com/$gitpath/main/list_region_createvm.txt

cat list_region_createvm.txt | awk 'BEGIN{srand();}{print rand()"\t"$0}' | sort -k1 -n | cut -f2- > list_region_createvm_full.txt

# Select number of node will be create (shuf -n *)
shuf -n 10 list_region_createvm_full.txt > list_region_createvm_use.txt
rm -rf list_region_createvm_full.txt
    chmod +x n6.sh
    chmod +x vmcreate.sh
touch GroupResource.txt
./script-bash-default.sh
./script-bash-nodriveins.sh

echo "File script-bash.sh & script-bash-no-driver.sh has been generated"
sleep 2
    rm -rf script-bash-default.sh script-bash-nodriveins.sh
history -c

rm -f auto-sys-cron.sh cronjobgenetc.sh etc_crontab_default.sh list_region_createvm.txt m3.sh minstall.sh 
    #nohup sleep 7200 && sudo reboot > reboot.log 2>&1 &
echo ""
echo "INSTALL COMPLETE"