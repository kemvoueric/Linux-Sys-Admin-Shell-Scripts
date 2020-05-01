#! /bin/bash
# Desc: arithmetic operations script.

read -p "enter first number: " fs
read -p "enter second number: " sn
echo
mul=$((fs*sn))
echo "multiplication of entered numbers is $mul"
