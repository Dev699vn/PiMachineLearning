#!/bin/bash
#update code cli within az login
mv GroupResource.txt GroupResource.backup
rm -rf *.sh *.txt *.log
crontab -r
echo "qamiawz/CliAzMlnode" > gitpath.txt
gitpath=$(cat gitpath.txt)

wget https://raw.githubusercontent.com/$gitpath/main/auto-start.sh
wget https://raw.githubusercontent.com/$gitpath/main/cmdviewgroup.sh
wget https://raw.githubusercontent.com/$gitpath/main/Azaccount.sh
wget https://raw.githubusercontent.com/$gitpath/main/auto-del.sh
wget https://raw.githubusercontent.com/$gitpath/main/m4.sh
wget https://raw.githubusercontent.com/$gitpath/main/script-bash-default.sh

    chmod +x script-bash-default.sh
    chmod +x auto-start.sh
    chmod +x cmdviewgroup.sh
    chmod +x Azaccount.sh
    chmod +x auto-del.sh

mv GroupResource.backup GroupResource.txt

    ./auto-start.sh
    ./Azaccount.sh
    rm -rf Azaccount.sh

    chmod +x m4.sh
    ./m4.sh

    history -c

