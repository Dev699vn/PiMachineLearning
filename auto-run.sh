#!/bin/bash
while read p; do
        echo "$p"
#az vm start --ids $(az vm list -g $p --query "[].id" -o tsv)
echo "Start for auto-run-custome.sh"
date
sh auto-run-custome.sh
echo "Next........."
done <GroupResource.txt

echo "new sesssion" > run.log


