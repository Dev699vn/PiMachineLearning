#!/bin/bash

#!/bin/bash
file=list_region_createvm.txt
while IFS= read -r locationset
do

#start command
TimeSleepCreateWait=($(shuf -i 15-45 -n 1))
sleep $TimeSleepCreateWait

echo "$locationset"
location="$locationset"
echo $location >> created.txt
echo > VMName.txt

LSTWORDARR=(
"ubuNtu"
"liNux"
"clustEr"
"cloudEr"
"hostsErvEr"
"sErvEr"
"NodEjs"
"dockEr"
"rEdisubuNtu"
"postgE"
"cdNNEtwork"
"publicmAiN"
"iNstANcEf"
"AblAutor"
"AblAuts"
"AblAzE"
"AblEdEr"
"AblEgAtE"
"AblEgAtEs"
"AbodEs"
"AbodiNg"
"AbohmmEr"
"AbohmsomE"
"AboidEAu"
"AboidEAus"
"AboidEAux"
"AboiljoiN"
"AboitEAu"
"AbrAchiA"
"AbrAchiAs"
"AbrAdAblE"
"AbrAdANt"
"AbrAdANts"
"AbrAdENN"
"AcEtifiEr"
"AcEtifiErs"
"AcEtifiEs"
"AcEtify"
"cANfulul"
"cANfuls"
"cANglENNEr"
"cANglEd"
"cANglEsiN"
"cANgliNg"
"cANguENg"
"cANguEs"
"cANiculAr"
"cANidsErvEr"
"cANidsEr"
"cANkErs"
"cANkErEd"
"dipcANkEr"
"dipchick"
"dipchicks"
"dipEptidAsE"
"dipEptidE"
"dipEptidEs"
"dipEtAlous"
"ENcArpus"
"ENcArpusEs"
"ENcAsEss"
"ENcAsEd"
"ENcAsEmENt"
"ENcAsEs"
"ENcAsh"
"ENcAshAblE"
"ENcAshEd"
"ENcAshEs"
"lukhAkE"
"hAkEANl"
"hAkEAs"
"hAkEEm"
"hAkEEms"
"hAkEssEr"
"hAkimEr"
"hAkims"
"hAkuNExt"
"hAkususA"
"hAlAchA"
"hAlAchAs"
"iNscApE"
"iNscApEs"
"iNsciENcE"
"iNsciENt"
"iNscoNcE"
"iNscoNcEd"
"NEgociANt"
"NEgociANts"
"tErrEEN"
"tErrEENs"
"tErrEllA"
"tErrEllAs"
"tErrENE"
"tErrENEs"
"upstANds"
"upstArE"
"upstArEd"
"upstArEs"
"upstAriNg"
"upstArt"
"upstArtEd"
"upstArtiNg"
"upstArts"
"upstAtE"
"upstAtEr"
"upstAtErs"
"upstAtEs"
"upstAyspot"
"upstAyEd"
"upstAyiNg"
"upstAys"
"upstEpspot"
"upstEppEd"
"upstEps")

WORDTOUSE=($(shuf -n1 -e "${LSTWORDARR[@]}"))
RANDOMNumbers=($(shuf -i 2-99 -n 1))

echo $WORDTOUSE$RANDOMNumbers > VMName.txt

echo "------------------------------------------------------------------------"
cat VMName.txt
echo "------------------------------------------------------------------------"
tmpvmname=$(cat VMName.txt)
echo $tmpvmname
echo "$tmpvmname"_group >> GroupResource.txt

# Tuy chinh VM
size=Standard_NC6s_v3
#size=Standard_B2s
priority=Spot
adminusername=azureuser
adminpassword=12345678@Abc

az group create --location $locationset --resource-group "$tmpvmname"_group
sleep 2
az vm create --resource-group "$tmpvmname"_group --name $tmpvmname --priority $priority --image UbuntuLTS --size $size --public-ip-sku Standard --custom-data script-bash.sh --admin-username $adminusername --admin-password $adminpassword

echo "Done"
#end command

done < "$file"
