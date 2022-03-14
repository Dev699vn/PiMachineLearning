#!/bin/bash

USEPROCNAME=$(cat SETPROCNAME.txt)
whoami > name.txt
namepath=$(cat -1 name.txt)

PROCESS="$USEPROCNAME";
if ps ax | grep -v grep | grep $PROCESS > /dev/null
then
        echo "$PROCESS is running" ;
else
        echo "$PROCESS is NOT running" ;		
		ps -ef | grep '$USEPROCNAME' | grep -v grep | awk '{print $2}' | xargs -r kill -9
		sudo su -
		cd /home/$namepath/bin/ && rm -rf result.log && nohup sh runsrc.sh > result.log 2>&1 &
		echo "starting..." ;

fi
