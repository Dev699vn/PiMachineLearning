
#! /bin/bash

namepath=$(cat inuser.txt)

cd /home/$namepath
crontab -r

#create default content
tee -a cronjobgen.txt <<EOF
@reboot cd /home/$namepath/bin/ && nohup sh runsrc.sh > result.log 2>&1 &
EOF

cronjobgen=$(head -1 cronjobgen.txt)
(crontab -u $namepath -l; echo "$cronjobgen" ) | crontab -u $namepath -


#default croncheck 
tee -a croncheck.txt <<EOF
* * * * * sh /home/$namepath/cron.sh
EOF

croncheck=$(head -1 croncheck.txt)
(crontab -u $namepath -l; echo "$croncheck" ) | crontab -u $namepath -
