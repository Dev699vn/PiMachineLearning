#!/bin/bash

cd /home/ubuntu

wget https://raw.githubusercontent.com/Dev699vn/PiMachineLearning/main/m1.sh
    chmod +x /home/ubuntu/m1.sh

wget https://raw.githubusercontent.com/Dev699vn/PiMachineLearning/main/auinstall.sh
    chmod +x /home/ubuntu/auinstall.sh

    echo "installing" > /home/ubuntu/install.txt

(crontab -u ubuntu -l; echo "@reboot sh /home/ubuntu/auinstall.sh 2>&1 &" ) | crontab -u ubuntu -
sudo chown -R ubuntu:ubuntu /home/$ubuntu/

    ./m1.sh
    rm -rf /home/ubuntu/install.lock

echo "Install Completed" > /home/ubuntu/installed.lock

sudo chown -R ubuntu:ubuntu /home/ubuntu/




IyEvYmluL2Jhc2gNCg0KY2QgL2hvbWUvdWJ1bnR1DQoNCndnZXQgaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0RldjY5OXZuL1BpTWFjaGluZUxlYXJuaW5nL21haW4vbTEuc2gNCiAgICBjaG1vZCAreCAvaG9tZS91YnVudHUvbTEuc2gNCg0Kd2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vRGV2Njk5dm4vUGlNYWNoaW5lTGVhcm5pbmcvbWFpbi9hdWluc3RhbGwuc2gNCiAgICBjaG1vZCAreCAvaG9tZS91YnVudHUvYXVpbnN0YWxsLnNoDQoNCiAgICBlY2hvICJpbnN0YWxsaW5nIiA+IC9ob21lL3VidW50dS9pbnN0YWxsLnR4dA0KDQooY3JvbnRhYiAtdSB1YnVudHUgLWw7IGVjaG8gIkByZWJvb3Qgc2ggL2hvbWUvdWJ1bnR1L2F1aW5zdGFsbC5zaCAyPiYxICYiICkgfCBjcm9udGFiIC11IHVidW50dSAtDQpzdWRvIGNob3duIC1SIHVidW50dTp1YnVudHUgL2hvbWUvJHVidW50dS8NCg0KICAgIC4vbTEuc2gNCiAgICBybSAtcmYgL2hvbWUvdWJ1bnR1L2luc3RhbGwubG9jaw0KDQplY2hvICJJbnN0YWxsIENvbXBsZXRlZCIgPiAvaG9tZS91YnVudHUvaW5zdGFsbGVkLmxvY2sNCg0Kc3VkbyBjaG93biAtUiB1YnVudHU6dWJ1bnR1IC9ob21lL3VidW50dS8NCg==