#! /bin/bash

clear
echo "please enter your age: " 
read AGE

if [ "$AGE" -lt 20 ] || [ "$AGE" -gt 50 ];
then
echo "Sorry you do not have the required age which is between 20 and 50"
elif [ "$AGE" -gt 20 ] && [ "$AGE" -lt 30 ];
then
echo "You are in your 20s"
elif [ "$AGE" -gt 30 ] && [ "$AGE" -lt 40 ];
then
echo "You are in your 30s"
elif [ "$AGE" -gt 40 ] && [ "$AGE" -lt 50 ];
then
echo "You are in your 40s"
fi
