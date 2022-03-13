#!/bin/bash

	file="/home/azureuser/installed.lock"
		if [ -f "$file" ]
	then
		echo "$file found OK."
	else
		echo "$file not found."
        sh /home/azureuser/m1.sh
            sudo chown -R azureuser:azureuser bin/
            sudo chown -R azureuser:azureuser /home/azureuser/bin/
        rm -rf install.lock
        echo "Install Completed" > installed.lock
	fi
	
