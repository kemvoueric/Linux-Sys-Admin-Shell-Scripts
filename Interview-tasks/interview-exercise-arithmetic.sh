#! /bin/bash
# Write a script that takes a list of integers (as arguments) and returns a response 
# with the average (mean), total, maximum and minimum values. Print the average to two
# decimal places. To make this a little more straightforward assume that input values
# are always integers.

n1=$1
n2=$2
n3=$3
n4=$4
n5=$5

sum=$(( $1 + $2 + $3 + $4 + $5 ))
avg=$(( sum/$# ))
echo "Average: $avg"
max=$1

#Loop that compares maxEle with the
#passed arguments and updates it

for arg in "$@"
do
    if [ "$arg" -gt "$max" ]
    then
        max=$arg
    fi
done

echo "Max: $max"
min=$1

for arg in "$@"
do
    if [ "$arg" -lt "$min" ]
    then
        min=$arg
    fi

done
echo "Min: $min"
echo "Total: $sum"


