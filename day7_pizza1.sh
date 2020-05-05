#! /bin/bash
echo 'Script for day 7, pizza box 1'
echo 'Goal is to run Case 2-6 once, Case 1-3 once, Case 3-0 twice'
./multimaster.sh 3 2 6
./multimaster.sh 3 1 3
./multimaster.sh 1 3 0
./multimaster.sh 2 3 0

screen -ls

echo 'Done boss'
