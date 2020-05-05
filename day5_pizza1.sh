#! /bin/bash
#Corrected script on 6.8.2019, as case 3-1 was run on "run 1", when needed to run on "run 5". Noted on thesis.
echo 'Script for day 5, pizza box 1'
echo 'Goal is to run Case 2-0 twice, Case 3-1 once and Case 1-2 thrice'
./multimaster.sh 2 2 0
./multimaster.sh 3 2 0
./multimaster.sh 5 3 1
./multimaster.sh 1 1 2
./multimaster.sh 2 1 2
./multimaster.sh 3 1 2


screen -ls

echo 'Done boss'
