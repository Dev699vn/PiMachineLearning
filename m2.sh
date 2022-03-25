#!/bin/bash
#whoami > inuser.txt
echo "Dev699vn/PiMachineLearning" > gitpath.txt
gitpath=$(head -1 gitpath.txt)

wget https://raw.githubusercontent.com/$gitpath/main/ins_script.sh
chmod +x ins_script.sh

./ins_script.sh

