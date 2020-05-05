#! /bin/bash
echo 'Script for day 5, pizza box 2'
echo 'Goal is to run Case 2-0 twice, Case 2-2 once, and case 2-1 thrice'
./multimaster.sh 4 2 0
./multimaster.sh 5 2 0
./multimaster.sh 1 2 2
./multimaster.sh 1 2 1
./multimaster.sh 2 2 1
./multimaster.sh 3 2 1


screen -ls

echo 'Done boss'
