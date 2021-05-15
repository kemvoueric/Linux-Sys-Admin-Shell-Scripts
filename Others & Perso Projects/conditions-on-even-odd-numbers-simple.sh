#! /bin/bash
# Desc: check whether the number is even, odd or zero

clear
echo "enter a number"
read a
echo
if [ $a -eq 0 ];
   then
   echo "Zero was entered"
   elif [ `expr $a % 2` -eq 0 ];
   then
   echo "Its an even number"
   else
   echo "Its an odd number"
fi

# test command
# test 5 == 55 && echo "Yes" || echo "No"
# test 5 == 5 && echo "Yes" || echo "No"
# test -f /etc/hosts && echo "file exists" || echo "file does not exist"
