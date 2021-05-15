#! /bin/bash
# Desc: the test command

# test 5 == 55 && echo "Yes" || echo "No"
# test 5 == 5 && echo "Yes" || echo "No"
# test -f /etc/hosts && echo "file exists" || echo "file does not exist"

read -p "enter number 100: " number
echo
if test $number == 100
then
echo "Good, you've entered number 100"
else
echo "Why did not enter 100"
fi


