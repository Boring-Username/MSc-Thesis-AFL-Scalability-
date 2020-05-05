#! /bin/bash
echo usage 'script' 'run#' 'Masters#' 'Slaves#'
## setting some used variables, t for time and p for daves path
t='24h'
p='/home/dave'

##Check for all the arguments
## if to check for more than 4 (case is not fit to handle "gt" expression), case to check for correctness. Can be expanded to include singular instances

if [ "$#" -gt "3" ]
then
    echo 'RTFM' ; exit 1
fi

case $# in
[1-2])
    echo 'RTFM' ; exit 1
;;
[3])
    echo 'Good BOY! Syntax is OK'
;;
esac

##Checking if dave is present
if [ -d $p ] 
then
    echo "Dave exists, we can move forward" 
else
    echo "Making dave"
    cd /home
    mkdir dave
fi

##traversing to dave
cd $p

## Checking if afl can be run (ie. no throttling and others). AFL returns 1 if something went wrong during startup
echo 'Checking AFL, Spooling up...'

timeout 2s afl-fuzz -i $p/input -o $p/output/ -- who @@ &> test.txt

if [ "$?" -eq "1" ]
then
    echo 'AFL is not feeling well, check test.txt' 
    exit 1
else
    echo 'AFL seems fine'
    rm test.txt
fi

echo 'Case run number:'$1'. Master instances:'$2'. Slave instances:'$3'. Runtime is:'$t


##checking if case is present, if not, making one, traversing to it and preparing sync_dir for AFL
c="case_"$2$3r$1
if [ -d "/home/dave/"$c ] 
then
    echo "Case stucture exists??? Exiting" ; exit 1 
else
    mkdir $c
    cd $c
    mkdir sync_dir
fi

## make $2 amount of masters in a loop, 0 masters exits the script
if [ "$2" -eq "0" ]
then
    echo 'you need a master for instance, exiting' ; exit 1
fi

for ((m=1; m<="$2"; m++ ))
do
    echo 'did '$m 'Master';
    ##echo $c
    ##echo $PWD
    screen -dmS $c"_Master"$m timeout $t afl-fuzz -i $p/input/ -o sync_dir -M "Master"$m":"$m"/"$2 -- who @@
done

## check if slaves need to be made, and do the needfull
if [ "$3" -gt "0" ]
then
    for ((s=1; s<="$3"; s++ ))
    do
        echo 'did' $s 'Slave'
        screen -dmS $c"_Slave"$s timeout $t afl-fuzz -i $p/input/ -o sync_dir -S Slave$s -- who @@
    done
fi

##screen -ls

echo "Script done boss"

