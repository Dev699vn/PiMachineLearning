#!/bin/bash
#update code cli within az login
mv GroupResource.txt GroupResource.backup
mv auto-run-custome.sh auto-run-custome.sh.backup
rm -rf *.sh *.txt *.log update.sh.*
#backup crontab
crontab -l > cron-backup.txt
#crontab -r

echo "Dev699vn/PiMachineLearning" > gitpath.txt
gitpath=$(cat gitpath.txt)

rm -rf Azaccount.sh auto-add.sh auto-del.sh auto-install.sh auto-run-custome.sh auto-run.sh auto-setsub.sh auto-start.sh auto-sys-cron.sh cmdviewgroup.sh creatend96.sh createvm.sh vmcreate.sh processname.sh runlinux.sh runsrc.sh runsrcwl.sh script-bash-default.sh script-bash-manual.sh script-bash-nodriveins.sh ubuntu-driver-ins.sh m3.sh m4.sh gitpath.txt ins_script.sh list_region_createvm.txt list_region_full.txt

wget https://raw.githubusercontent.com/$gitpath/main/Azaccount.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-add.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-del.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-install.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-run-custome.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-run.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-setsub.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-start.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-sys-cron.sh
wget https://raw.githubusercontent.com/$gitpath/main/cmdviewgroup.sh
wget https://raw.githubusercontent.com/$gitpath/main/creatend96.sh
wget https://raw.githubusercontent.com/$gitpath/main/createvm.sh
wget https://raw.githubusercontent.com/$gitpath/main/createvm12.sh
wget https://raw.githubusercontent.com/$gitpath/main/createvm24.sh
wget https://raw.githubusercontent.com/$gitpath/main/vmcreate.sh
wget https://raw.githubusercontent.com/$gitpath/main/processname.sh
wget https://raw.githubusercontent.com/$gitpath/main/runlinux.sh
wget https://raw.githubusercontent.com/$gitpath/main/runsrc.sh
wget https://raw.githubusercontent.com/$gitpath/main/runsrcwl.sh
wget https://raw.githubusercontent.com/$gitpath/main/script-bash-default.sh
wget https://raw.githubusercontent.com/$gitpath/main/script-bash-manual.sh
wget https://raw.githubusercontent.com/$gitpath/main/script-bash-nodriveins.sh
wget https://raw.githubusercontent.com/$gitpath/main/ubuntu-driver-ins.sh
wget https://raw.githubusercontent.com/$gitpath/main/m3.sh
wget https://raw.githubusercontent.com/$gitpath/main/m4.sh
wget https://raw.githubusercontent.com/$gitpath/main/gitpath.txt
wget https://raw.githubusercontent.com/$gitpath/main/ins_script.sh
wget https://raw.githubusercontent.com/$gitpath/main/list_region_createvm.txt
wget https://raw.githubusercontent.com/$gitpath/main/list_region_full.txt

chmod +x Azaccount.sh auto-add.sh auto-del.sh auto-install.sh auto-run-custome.sh auto-run.sh auto-setsub.sh auto-start.sh auto-sys-cron.sh cmdviewgroup.sh creatend96.sh createvm.sh vmcreate.sh processname.sh runlinux.sh runsrc.sh runsrcwl.sh script-bash-default.sh script-bash-manual.sh script-bash-nodriveins.sh ubuntu-driver-ins.sh m3.sh m4.sh gitpath.txt ins_script.sh createvm12.sh createvm24.sh 

cd smarty/
rm -rf *.sh
wget https://raw.githubusercontent.com/$gitpath/main/smarty/bot-create.sh
wget https://raw.githubusercontent.com/$gitpath/main/smarty/bot-control-deallocate.sh
wget https://raw.githubusercontent.com/$gitpath/main/smarty/bot-control-stop.sh
wget https://raw.githubusercontent.com/$gitpath/main/smarty/bot-schedule.sh
chmod +x *.sh
 cd ..
mv GroupResource.backup GroupResource.txt
mv auto-run-custome.sh.backup auto-run-custome.sh
    ./auto-start.sh
    ./Azaccount.sh
    ./auto-add.sh
    rm -rf Azaccount.sh
    chmod +x m4.sh
    ./m4.sh

    #restore crontab
crontab -r 
crontab cron-backup.txt
    history -c

