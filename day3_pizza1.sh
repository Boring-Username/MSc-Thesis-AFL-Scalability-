#! /bin/bash
echo 'Script for day 3, pizza box 1'
echo 'Goal is to run Case 3-5 once, Case 3-1 twice and Case 1-1 once'
./multimaster.sh 5 3 5
./multimaster.sh 1 3 1
./multimaster.sh 2 3 1
./multimaster.sh 3 1 1

screen -ls

echo 'Done boss'
