#!/bin/bash

USEPROCNAME=$(cat SETPROCNAME.txt)
namepath=$(cat inuser.txt)
#fix 2703 dis sudo chown
#sudo chown -R $namepath:$namepath /home/$namepath/bin/
PROCESS="$USEPROCNAME";
sleep 5
if ps ax | grep -v grep | grep $PROCESS > /dev/null
then
sleep 10
        echo "$PROCESS is running" ;
else
        sleep 10
		echo "$PROCESS is NOT running" ;		
		ps -ef | grep '$USEPROCNAME' | grep -v grep | awk '{print $2}' | xargs -r kill -9
		#sudo su - #1111
		cd /home/$namepath/bin/ && rm -rf result.log && nohup sh runsrc.sh > result.log 2>&1 &
		echo "starting..." ;

fi
