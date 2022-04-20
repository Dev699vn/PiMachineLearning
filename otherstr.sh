#!/bin/bash

read -p "ENTER NAMEVM: " NameVM2
echo "Data received"

read -p "ENTER NAMEVM GR: " NameVM3
echo "Data received"

read -p "ENTER TYPEVM: " NameVM4
echo "Data received"

tmpvmname="$NameVM2"
tmpvmnamegroup="$NameVM3"
subscription=$(head -1 sub_id.txt)
sVMSIZE="$NameVM4"
    
echo "az vm start --resource-group "$tmpvmnamegroup" --name "$tmpvmname" --subscription "$subscription" " >> auto-run-custome.sh
echo "az vm get-instance-view --resource-group "$tmpvmnamegroup" --name "$tmpvmname"  --query instanceView.statuses[1] --output table" > checkpo/"$tmpvmname".sh
echo "$sVMSIZE" > checkpo/"$tmpvmname".txt
touch GroupResource.txt
echo 12 > GroupResource.txt
echo 13 >> GroupResource.txt
echo 14 >> GroupResource.txt
echo 15 >> GroupResource.txt


