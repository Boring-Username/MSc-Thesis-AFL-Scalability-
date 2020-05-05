#! /bin/bash
echo 'Script for day 5, pizza box 1'
echo 'Goal is to run Case 2-0 twice, Case 3-1 once and Case 1-2 thrice'
./multimaster.sh 2 2 0
./multimaster.sh 3 2 0
./multimaster.sh 1 3 1
./multimaster.sh 1 1 2
./multimaster.sh 2 1 2
./multimaster.sh 3 1 2


screen -ls

echo 'Done boss'
