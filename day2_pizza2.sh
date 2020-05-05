#! /bin/bash
echo 'Script for day 2, pizza box 2'
echo 'goal is to run case 3-5 twice and 1-1 once'
./multimaster.sh 3 3 5
./multimaster.sh 4 3 5
./multimaster.sh 2 1 1

screen -ls

echo 'Done boss'
