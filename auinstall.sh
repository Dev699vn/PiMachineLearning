#!/bin/bash

whoami > name.txt
namepath=$(cat name.txt)

	file="/home/$namepath/installed.lock"
		if [ -f "$file" ]
	then
		echo "$file found OK."
	else
		echo "$file not found."
        sh /home/$namepath/m1.sh
            sudo chown -R $namepath:$namepath bin/
            sudo chown -R $namepath:$namepath /home/$namepath/bin/
        rm -rf install.lock
        echo "Install Completed" > installed.lock
	fi
	
