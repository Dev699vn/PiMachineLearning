#create default content
tee -a cronjobgenetc.txt <<EOF
*/2 * * * *    $namepath  cd $path && sudo nohup ./auto-run.sh > run.log 2>&1 &
EOF

tee -a etc_crontab_default.sh <<EOF
sudo echo "SHELL=/bin/sh" > /etc/crontab
sudo echo "PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin" >> /etc/crontab
sudo echo "17 *    * * *   root    cd / && run-parts --report /etc/cron.hourly" >> /etc/crontab
sudo echo "25 6    * * *   root    test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.daily )" >> /etc/crontab
sudo echo "47 6    * * 7   root    test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.weekly )" >> /etc/crontab
sudo echo "52 6    1 * *   root    test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.monthly )" >> /etc/crontab
EOF

    chmod +x etc_crontab_default.sh
    sudo ./etc_crontab_default.sh

cronjobgenetc=$(head -1 cronjobgenetc.txt)
 
tee -a cronjobgenetc.sh <<EOF
#!/bin/bash
sudo echo "$cronjobgenetc" >> /etc/crontab
EOF

    chmod +x cronjobgenetc.sh
    sudo ./cronjobgenetc.sh

    cd /home/azureuser
    crontab -r