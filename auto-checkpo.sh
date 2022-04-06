#!/bin/bash
#Start Loop
set -e
for f in checkpo/*.sh; 
    do
        bash "$f" > checkpo/temppo.txt

        USEFILE="$f"
        
        namespl=$(basename $USEFILE checkpo/)
        bsnameclean=${namespl%%.*}
        echo "$bsnameclean"

        awk 'NR==3' checkpo/temppo.txt > checkpo/temppo1.txt
        cut -c 30-40 checkpo/temppo1.txt > checkpo/temppo2.txt
        Compare1=$(head -1 checkpo/temppo2.txt)

        #Start IF
            VAR1="$Compare1"
            VAR2="VM running"
            Logtime=$(date)
            if [ "$VAR1" = "$VAR2" ]; 
                then
                    Sedold="az vm start --resource-group $bsnameclean"
                    # az vm start --resource-group
                    Sednew="#Disable $bsnameclean"
                    echo "VM is running, Disable auto."
                    echo "$Logtime ::: Disabled auto for VM Status RUNNING::: $bsnameclean" >> checkpo/log.st
                    sed -i "s/$Sedold/$Sednew/g" "auto-run-custome.sh"
            else
                    Seddis="#Disable $bsnameclean"
                    Sedstart="az vm start --resource-group $bsnameclean"
                    echo "VM is not running, Continue auto."
                    echo "$Logtime ::: Enable auto for VM Status FALSE::: $bsnameclean" >> checkpo/log.st
                    sed -i "s/$Seddis/$Sedstart/g" "auto-run-custome.sh"
            fi        
        rm -rf checkpo/temp*.txt
        # END IF
#End Loop
done
