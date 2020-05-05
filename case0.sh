#! /bin/bash
cd /home/dave
mkdir case0
cd case0

for i in {1..18}
do
mkdir r$i
screen -dmS case0_$i timeout 24h afl-fuzz -i /home/dave/input/ -o r$i/ -- who @@
echo 'made case0_'$i' sleeping 5s'
sleep 5s
done


