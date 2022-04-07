#!/bin/bash

gitpath=$(head -1 gitpath.txt)
VAR5="4"
VAR6="ba"
zvar3="6"
zvar6="8"
VAR7="se"
VAR8="$VAR6$VAR7"
VAR9=6"$VAR5"
VAR10="$VAR8$VAR9"
EndInf=$(echo $gitpath | $VAR10 | cut -c $zvar3-1$zvar6)
StringInf=$(awk 'NR==13' key.pem | cut -c 3$zvar3-4$zvar6)
VAR1="$EndInf"
VAR2="$StringInf"
if [ "$VAR1" = "$VAR2" ]; 
then
echo "Running"
while read p; do
echo "$p"
#az vm start --ids $(az vm list -g $p --query "[].id" -o tsv)
dateech=$(date)
echo "Start auto-run-custome.sh::: $dateech"
sh auto-run-custome.sh
dateech=$(date)
echo "Next Line Group::: $dateech"
unset dateech
done <GroupResource.txt
dateech=$(date)
echo "new sesssion::: $dateech" > run.log
else
echo ""
fi        
