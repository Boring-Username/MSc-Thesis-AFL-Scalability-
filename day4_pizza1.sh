#! /bin/bash
echo 'Script for day 4, pizza box 1'
echo 'Goal is to run Case 1-7 twice and Case 1-1 once'
./multimaster.sh 2 1 7
./multimaster.sh 3 1 7
./multimaster.sh 5 1 1

screen -ls

echo 'Done boss'
