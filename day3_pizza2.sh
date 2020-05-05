#! /bin/bash
echo 'Script for day 3, pizza box 2'
echo 'Goal is to run Case 1-7 once, Case 3-1 twice and Case 1-1 once'
./multimaster.sh 1 1 7
./multimaster.sh 3 3 1
./multimaster.sh 4 3 1
./multimaster.sh 4 1 1

screen -ls

echo 'Done boss'
