#!/bin/bash
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
        AccName4m=$(head -1 inuser.txt)
        #Start IF
        VAR1="$Compare1"
        VAR2="VM running"
        Logtime=$(date)
        if [ "$VAR1" = "$VAR2" ]; 
            then
                # VM IS RUNNING > DISABLE AUTO
                FirstSize=$(du -sb auto-run-custome.sh | awk '{print $1}')
                Sedold="az vm start --resource-group $bsnameclean"
                Sednew="#Disable $bsnameclean"
                    echo "VM is running, Disable auto."
                    echo "$Logtime ::: Disabled auto for VM Status RUNNING::: $bsnameclean" >> checkpo/log.st
                sed -i "s/$Sedold/$Sednew/g" "auto-run-custome.sh"
                SecondSize=$(du -sb auto-run-custome.sh | awk '{print $1}')
                    if [ "$FirstSize" -eq "$SecondSize" ]
                        then
                            echo "Size is the same. NO SEND"
                    else
                            echo "Size is changing, SENDING..."
                            ip4address=$(az vm show -d -g "$bsnameclean"_group -n $bsnameclean --query publicIps -o tsv)
                            echo "RUNNING - ACC::: $AccName4m - VM change to RUNNING name::: $bsnameclean ::IP: $ip4address" > noti/status.txt
                            cd noti/ && ./dosend.sh
                            cd ..
                            echo "SENDING COMPLETE"
                    fi
            else
                # VM IS DISABLE > RUNNING AUTO
                FirstSize=$(du -sb auto-run-custome.sh | awk '{print $1}')
                Seddis="#Disable $bsnameclean"
                Sedstart="az vm start --resource-group $bsnameclean"
                    echo "VM is not running, Continue auto."
                    echo "$Logtime ::: Enable auto for VM Status FALSE::: $bsnameclean" >> checkpo/log.st
                sed -i "s/$Seddis/$Sedstart/g" "auto-run-custome.sh"
                SecondSize=$(du -sb auto-run-custome.sh | awk '{print $1}')
                    if [ "$FirstSize" -eq "$SecondSize" ]
                        then
                            echo "Size is the same. NO SEND"
                    else
                        echo "Size is changing, SENDING..."
                            echo "STOP - ACC::: $AccName4m - VM changed to STOP. name::: $bsnameclean " > noti/status.txt
                            cd noti/ && ./dosend.sh
                            cd ..
                    fi
            fi        
        rm -rf checkpo/temp*.txt
        # END IF
done


