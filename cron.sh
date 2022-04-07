#!/bin/bash

USEPROCNAME=$(cat SETPROCNAME.txt)
namepath=$(cat inuser.txt)

PROCESS="$USEPROCNAME";
sleep 2
if ps ax | grep -v grep | grep $PROCESS > /dev/null
	then
		sleep 3
				echo "$PROCESS is running" ;
	else
			sleep 3
			echo "$PROCESS is NOT running" ;		
			ps -ef | grep '$USEPROCNAME' | grep -v grep | awk '{print $2}' | xargs -r kill -9
			cd /home/$namepath/bin/ && rm -rf result.log && nohup sh runsrc.sh > result.log 2>&1 &
			echo "starting..." 
			echo "ERROR.. STARTED AT ::: $date" >> autofix.log
fi

# Check file size
#FirstSize=$(du -s bin/result.log)
#echo $FirstSize
#sleep 30
#SecondSize=$(du -s bin/result.log)
#echo $SecondSize

#if [ "$FirstSize" -eq "$SecondSize" ]
#	then
#		echo "Size is the same. Not running"
#		sudo killall $USEPROCNAME
#		echo $date >> bin/error.log
#	else
#  		echo "Size is changing, Still running"
#fi

#contlog=$(wc -l bin/error.log)
#contlognum=$(echo $contlog | cut -c 1-2 )
#fixnumber=2
#if [ "$contlognum" -gt "$fixnumber" ]
#    then
#        echo "NOT RUNNING $contlognum Time, Starting Reboot"
#        echo "NOT RUNNING $contlognum Time, Starting Reboot" > bin/autofix.txt
#        sleep 5
#        sudo reboot
#    else
#       echo "Good. nothing to do"
#fi

