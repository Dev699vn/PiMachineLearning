#!/bin/bash

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
echo "18. brazilsouth"
echo "=====================CAC REGION DA TAO TRUOC DAY========================"

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
18)	locationset=brazilsouth
	break;;

Q|q) quit=y;; 
*) echo "Try Again" 
esac 
done 

    echo "Starting with location:" "$locationset"
    location="$locationset"
        echo $location >> created.txt
        echo > VMName.txt



# Custom VM type
quit=n 
while [  "$quit"   =   "n"  ] 
do 
echo 
echo "============================Regular/Standard========================="
echo "01. Standard_B2s : 2-4"
echo "02. Standard_DS1_v2 : 1-3.5"
echo "03. Standard_D2s_v3 : 2-8"
echo "============================Spot/Basic==============================="
echo "04. Standard_NC6s_v3 - Spot"
echo "05. Standard_ND96amsr_A100_v4 - Spot"
echo "====================================================================="
echo ""
echo "Q.Quit" 
echo 

echo "Enter choice" 
read choice 
case $choice in 
1) vmsizes=Standard_B2s
    prioritys=Regular
    pubipskus=Standard
    customdatas=auto-run-custome.sh
    break;;
2) vmsizes=Standard_DS1_v2
    prioritys=Regular
    pubipskus=Standard
    customdatas=auto-run-custome.sh
    break;;
3) vmsizes=Standard_D2s_v3
    prioritys=Regular
    pubipskus=Standard
    customdatas=auto-run-custome.sh
    break;;
4) vmsizes=Standard_NC6s_v3
    prioritys=Spot
    pubipskus=Basic
    customdatas=script_bash.sh
    break;;
5) vmsizes=Standard_ND96amsr_A100_v4
    prioritys=Spot
    pubipskus=Basic
    customdatas=ins_script.sh
    break;;


Q|q) quit=y;; 
*) echo "Try Again" 
esac 
done 
			


# Custom VM type
quit=n 
while [  "$quit"   =   "n"  ] 
do 
echo 
echo "============================OS========================="
echo "01. UbuntuLTS"
echo "02. Win2012Datacenter"
echo "03. Canonical:UbuntuServer:18_04-lts-gen2:latest"
echo "04. nvidia:tensorflow_from_nvidia:gen2_21-06-0:latest"
echo "============================OS========================="
echo "Q.Quit" 
echo 
echo "Enter choice" 
read choice 
case $choice in 
1) imagess=UbuntuLTS
    break;;
2) imagess=Win2012Datacenter
    break;;
3) imagess=Canonical:UbuntuServer:18_04-lts-gen2:latest
    break;;
4) imagess=nvidia:tensorflow_from_nvidia:gen2_21-06-0:latest
    break;;


Q|q) quit=y;; 
*) echo "Try Again" 
esac 
done 


    # VM and Group name
read -p "Nhap vao ten may..........:: " VMNAMECustom
        echo $VMNAMECustom > VMName.txt

    echo "------------------------------------------------------------------------"
        cat VMName.txt
    echo "------------------------------------------------------------------------"
        tmpvmname=$(cat VMName.txt)
                
            echo "$tmpvmname"_group >> GroupResource.txt

        Uuname=$(cat inuser.txt)
        Upassw=$(cat inpass.txt)

    # Tuy chinh VM
		size=$vmsizes
		priority=$prioritys
		pubipsku=$pubipskus
		image=$imagess

		adminusername=$Uuname
		adminpassword=$Upassw
        DATA_INSERT=$customdatas
        

    az group create --location $locationset --resource-group "$tmpvmname"_group
    sleep 2
    az vm create --resource-group "$tmpvmname"_group --name $tmpvmname --priority $priority --image $image --size $size --public-ip-sku $pubipsku --custom-data $DATA_INSERT --admin-username $adminusername --admin-password $adminpassword

    echo "DA TAO Virtual Machine ::: $tmpvmname"
    echo "CAU HINH ::: $size"
    echo "Username ::: $Uuname"
    echo "Password ::: $Upassw"

    echo "Done"
    
