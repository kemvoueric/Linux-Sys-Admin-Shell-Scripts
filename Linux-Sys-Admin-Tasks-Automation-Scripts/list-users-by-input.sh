#! /bin/bash
# Desc: list logged in users based on input

echo "Please enter day (e.g. Mon)"
read d
echo
echo "Please enter month (e.g Aug)"
read m
echo
echo "please enter date (e.g. 28)"
read da
echo

last | grep -i "$d $m $da"


