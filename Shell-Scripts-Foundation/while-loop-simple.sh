#! /bin/bash
# Desc: perfrom a task repeatdly
clear
# scrip 1
#ab=1
#while (( $ab <= 10 ))
#   do
#   echo "welcome my $ab lecture"
#   ab=$(( ab+1 ))
#done

# script 2
file=/etc/resolv.conf
while IFS=' ' read -r line
do
echo $line
done < $file
