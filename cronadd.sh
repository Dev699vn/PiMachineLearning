
#Uuname=$(cat inuser.txt)
#whoami > name.txt
namepath=$(head -1 inuser.txt)

cd /home/$namepath
crontab -r

#create default content
tee -a cronjobgen.txt <<EOF
@reboot cd /home/$namepath/bin/ && nohup sh runsrc.sh > result.log 2>&1 &
EOF

cronjobgen=$(head -1 cronjobgen.txt)
(crontab -u $namepath -l; echo "$cronjobgen" ) | crontab -u $namepath -

