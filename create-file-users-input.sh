#! /bin/bash
# Desc: the script ask the use rhow many files they need creating

echo how many files do you want
read t
echo
echo please enter the start name of the files
read n

for i in $(seq 1 $t)
do 
    touch $n.$i
done

