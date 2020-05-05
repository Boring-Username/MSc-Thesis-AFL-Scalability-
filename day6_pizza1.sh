#! /bin/bash
echo 'Script for day 6, pizza box 1'
echo 'Goal is to run Case 1-2 twice, case 2-6 once, and case 1-3 once'
./multimaster.sh 4 1 2
./multimaster.sh 5 1 2
./multimaster.sh 1 2 6
./multimaster.sh 1 1 3

screen -ls

echo 'Done boss'
