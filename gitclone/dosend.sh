#!/bin/bash

mhotpot=$(echo -n 'aW4tdjMubWFpbGpldC5jb206NTg3' | base64 --decode)
mabi=$(echo -n 'YzY2ODA0YzA2YzY5ZjEzMzZiOTM4ZTEwNmUxZDUxZjA=' | base64 --decode)
musec=$(echo -n 'YTMzNTdlNjVjMmNlODlkOTFlNTJmZTEzYzA2N2FlOWQ=' | base64 --decode)
mform=$(echo -n 'bmd1eWVuZHV5cXVhbi5wcm9zQGdtYWlsLmNvbQ==' | base64 --decode)
mtors=$(echo -n 'bmd1eWVuZHV5cXVhbi5wcm9zQGdtYWlsLmNvbQ==' | base64 --decode)
messtxt=status.txt
#--verbose
./smtp-cli --missing-modules-ok --host  $mhotpot --enable-auth --user $mabi --password $musec --from $mform --to $mtors --data $messtxt