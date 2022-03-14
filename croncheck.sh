
whoami > name.txt
namepath=$(head -1 name.txt)

cd /home/$namepath
tee -a croncheck.txt <<EOF
* * * * * sh /home/$namepath/cron.sh
EOF

croncheck=$(head -1 croncheck.txt)
(crontab -u $namepath -l; echo "$croncheck" ) | crontab -u $namepath -
