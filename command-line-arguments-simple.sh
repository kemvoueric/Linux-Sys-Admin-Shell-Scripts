#! /bin/bash

clear
#echo `uptime`
#echo "The name of my script : $0"
#echo "The value of the 1st argument : $1"
#echo "The value of the 2nd argument : $2"
#echo "The value of the 3rd argument : $3"
#echo "total number of arguments passed to the script is: $#"

# IFS -> comma separator and only $* works with this
IFS=", "
a=$1
b=$2
c=$(( $a + $b ))

echo "Sum of the two supplied numbers is $c"
echo "total number of arguments passed : $#"
echo "printing all the arguments passed to the script : $@"
echo "printing all the arguments passed to the script : $*"
