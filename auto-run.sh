
#!/bin/bash

strval1="RUNNING"
strval2=$(head -1 status.run)


if [ $strval1 == $strval2 ]; then
  echo "Process is running. Not run cron"
else
  echo "Latest process is competed. Start new cron"

		while read p; do
		echo "$p"
		echo "RUNNING"> status.run
		
		#az vm start --ids $(az vm list -g $p --query "[].id" -o tsv)
		echo "Start for auto-run-custome.sh"
		sh auto-run-custome.sh
		echo "Next........."
		echo "COMPLETE" > status.run
		echo date >> status.run
		done <GroupResource.txt
		echo "new sesssion" > run.log

fi
