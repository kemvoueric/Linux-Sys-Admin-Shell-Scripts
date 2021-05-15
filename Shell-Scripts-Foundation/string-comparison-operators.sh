#! /bin/bash
# Desc: learning string comparisons in shell scripting
# -z means empty

clear
read -p "enter your name: " name
echo
if test "$name" = "edward" || test "$name" = "olivier"
then
echo "You've been selected for an interview!"
elif [ "$name" != "edward" ] && [ ! -z $name ]; 
then
echo "Sorry you are not selected for this job!"
elif [ -z $name ];
then
echo "Please enter your name, cant accept an empty name"
fi



