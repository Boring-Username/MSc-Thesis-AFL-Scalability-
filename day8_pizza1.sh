#! /bin/bash
echo 'Script for day 8, pizza box 1'
echo 'Goal is to run Case 2-6 once, case 1-3 once, and case 3-0 once'
./multimaster.sh 5 2 6
./multimaster.sh 4 1 3
./multimaster.sh 5 3 0


screen -ls

echo 'Done boss'
