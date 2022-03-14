#File nay nam truoc vmcreate va createvm

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
"s8xARU4zLvgoc0"
"FP730jsUUxXCfX"
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


#Uuname=$(cat inuser.txt)
#Upassw=$(cat inpass.txt)

