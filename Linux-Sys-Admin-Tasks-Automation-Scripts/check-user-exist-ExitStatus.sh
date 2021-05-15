#! /bin/bash
# grep -w -> stricty that word 

passwd=/etc/passwd

# get user name
read -p  " Enter a username: " user

# trying to search in /etc/passwd
cat "$passwd" | grep -wi "$user" > /dev/null

if [ $? -eq 0 ];
then
echo "user $user found on the system"
else
echo "user $user not found on the system"
fi
