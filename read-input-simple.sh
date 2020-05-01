#! /bin/bash

# script 1
#read -p "enter you full name: " i
#echo "your name is $i"

# script 2
#read -p "enter first number: " FN
#echo
#read -p "enter second number: " SN
#echo
#SUM=`expr $FN + $SN`
#sleep 1
#echo "sum of your entered number is $SUM" 

# script 3
# -t 5 -> wait for 5 second before going to the next option
#read -t 5 -p " enter first number: " FN
#echo
#read -t 5 -p " enter first number: " SN
#echo

# script 4
# -s -> hide from the screen
read -s -p "enter your password: " password
echo "---------------"
echo "Your password is $password"
