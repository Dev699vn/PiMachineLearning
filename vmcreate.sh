#!/bin/bash

source listVMname.sh
touch GroupResource.txt
file=list_region_createvm_use.txt

while IFS= read -r locationset
do

TimeSleepCreateWait=($(shuf -i 50-200 -n 1))
sleep $TimeSleepCreateWait

echo "$locationset"
location="$locationset"
echo $location >> created.txt
echo > VMName.txt

WORDTOUSE=($(shuf -n1 -e "${LSTWORDARR[@]}"))
RANDOMNumbers=($(shuf -i 2-99 -n 1))

echo $WORDTOUSE$RANDOMNumbers > VMName.txt

echo "------------------------------------------------------------------------"
cat VMName.txt
echo "------------------------------------------------------------------------"
tmpvmname=$(cat VMName.txt)
echo $tmpvmname
#echo "$tmpvmname"_group >> GroupResource.txt

Uuname=$(cat inuser.txt)
Upassw=$(cat inpass.txt)

# Tuy chinh VM
size=Standard_NC6s_v3
#size=Standard_B2s
priority=Spot
#pubipsku=Standard
pubipsku=Basic
adminusername=$Uuname
adminpassword=$Upassw

az group create --location $locationset --resource-group "$tmpvmname"_group
DOI1TI=($(shuf -i 2-6 -n 1))

sleep $DOI1TI
az vm create --resource-group "$tmpvmname"_group --name $tmpvmname --priority $priority --image UbuntuLTS --size $size --public-ip-sku $pubipsku --custom-data script-bash.sh --admin-username $adminusername --admin-password $adminpassword

echo "DA TAO Virtual Machine ::: $tmpvmname"
echo "CAU HINH ::: $size"
echo "Username ::: $Uuname"
echo "Password ::: $Upassw"

done < "$file"
