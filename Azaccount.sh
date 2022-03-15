#! /bin/bash

# get account email list
az account list > azaccountlist.txt
awk 'NR==12' azaccountlist.txt > azaccountlistdraw.txt
cut -c 16-23 azaccountlistdraw.txt > azacc.txt
rm -rf azaccountlist.txt azaccountlist.txt azaccountlistdraw.txt
GetUsername=$(cat azacc.txt)

ARRPASSWORD=(
"3782536aY@jEWb"
"95037836sf@OEb"
"n9udLGNZLBnPLT"
"Av9C05XK7aeWdJ"
"tSEJN5fHrRe7UG"
"hDAA6iz@fM9Amt"
"s8xARU4zLvgoc0"
"FP730jsUUxXCfX"
"ehhddv1b2B95Rs"
"bp6KigUkFMVIm5"
"dbn39iG4ycHXVt"
"NDRXuqYoDvVdtu"
"CRh2mbQd8VGRSs"
"UZ1v5W6N5Iw0@m"
"kFxUnLjLVVW4Xo"
"EyuF1wbH3TyUkC"
"YrL44ExVfYHHp7"
"z9dTwGUgkyCAHA"
"prL0kX@8SGkExu"
"mIIMuhd7jVdZeV"
"LreXfU1DTzlbMj"
"BZGhFeWNvADw57")

SETUSERNAME=$GetUsername
echo $SETUSERNAME > inuser.txt

SETPASSWD=($(shuf -n1 -e "${ARRPASSWORD[@]}"))
echo $SETPASSWD > inpass.txt

#xoa ky tu dac biet
sed -e 's/[^a-zA-Z*0-9]/ /g;s/  */ /g' inuser.txt > inuser_1.txt
sed 's/ //g' inuser_1.txt > inuser.txt
rm -rf inuser_1.txt
#cat inuser.txt



