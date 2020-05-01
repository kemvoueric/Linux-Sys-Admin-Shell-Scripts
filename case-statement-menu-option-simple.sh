#! /bin/bash

clear
while true
do

echo -e "please select your choice from below menu\n"
echo -e "1. pre-validation reports\n"
echo -e "2. run ad-hoc commands\n"
echo -e "3. top 10 CPU consuming processes\n"
echo -e "4. top 10 RAM consuming processes\n"
echo -e "5. user administration\n"
echo "0. exit"

read var
case $var in
     0)
     echo "exiting"
     break
     ;;
     1)
     clear
     echo "pre-validation reports"
     sleep 2
     ;;
     2)
     clear
     echo "run ad-hoc commands"
     sleep 2
     ;;
     3)
     clear
     echo "top 10 CPU consuming processes"
     sleep 2
     ;;
     4)
     clear
     echo "top 10 RAM consuming processes"
     sleep 2
     ;;
     5)
     clear
     echo "welcome to user administration"
     sleep 2
     ;;
     esac
done
