#!/bin/bash

source listVMname.sh

quit=n 
while [  "$quit"   =   "n"  ] 
do 
echo 
echo "============================CREATEVM===================================="
echo "01. eastus -xxx"
echo "02. eastus2 -xxx"
echo "03. southcentralus -xxx"
echo "04. westus -xxx"
echo "05. westus2 -xxx"
echo "06. westus3 -xxx"
echo "07. centralus -xxx"
echo "08. australiseast"
echo "09. southeastasia -xxx"
echo "10. northeurope"
echo "11. uksouth -xxx"
echo "12. westeurope -xxx"
echo "13. koreacentral"
echo "14. canadacentral -xxx"
echo "15. francecentral"
echo "16. switzenlandnorth"
echo "17. eastasia -xxx"
echo "=====================CAC REGION DA TAO TRUOC DAY========================"
cat created.txt
echo ""
echo "Q.Quit" 
echo 
echo "Enter choice" 
read choice 
case $choice in 
1) locationset=eastus
    break;;
2) locationset=eastus2
    break;;
3) locationset=southcentralus
    break;;
4) locationset=westus
    break;;
5) locationset=westus2
    break;;
6) locationset=westus3
    break;;
7) locationset=centralus
    break;;
8) locationset=australiseast
    break;;
9) locationset=southeastasia
    break;;
10) locationset=northeurope
    break;;
11) locationset=uksouth
    break;;
12) locationset=westeurope
    break;;
13) locationset=koreacentral
    break;;
14) locationset=canadacentral
    break;;
15) locationset=francecentral
    break;;
16) locationset=switzenlandnorth
    break;;
17) locationset=eastasia
    break;;

Q|q) quit=y;; 
*) echo "Try Again" 
esac 
done 

echo "Starting with location:" "$locationset"
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
echo "$tmpvmname"_group >> GroupResource.txt

Uuname=$(cat inuser.txt)
Upassw=$(cat inpass.txt)

# Tuy chinh VM
#size=Standard_NC6s_v3
size=Standard_B2s
priority=Regular
#pubipsku=Standard
pubipsku=Basic
adminusername=$Uuname
adminpassword=$Upassw

az group create --location $locationset --resource-group "$tmpvmname"_group
sleep 2
az vm create --resource-group "$tmpvmname"_group --name $tmpvmname --priority $priority --image UbuntuLTS --size $size --public-ip-sku $pubipsku --custom-data script-bash.sh --admin-username $adminusername --admin-password $adminpassword

echo "DA TAO Virtual Machine ::: $tmpvmname"
echo "CAU HINH ::: $size"
echo "Username ::: $Uuname"
echo "Password ::: $Upassw"

echo "Done"
 