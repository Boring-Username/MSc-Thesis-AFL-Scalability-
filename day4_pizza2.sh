#! /bin/bash
echo 'Script for day 4, pizza box 2'
echo 'Goal is to run Case 1-7 twice and Case 2-0 once'
./multimaster.sh 4 1 7
./multimaster.sh 5 1 7
./multimaster.sh 1 2 0

screen -ls

echo 'Done boss'
