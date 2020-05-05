#! /bin/bash
echo 'Script for day 6, pizza box 2'
echo 'Goal is to run Case 2-1 twice, case 2-6 once, and case 1-3 once'
./multimaster.sh 4 2 1
./multimaster.sh 5 2 1
./multimaster.sh 2 2 6
./multimaster.sh 2 1 3

screen -ls

echo 'Done boss'
