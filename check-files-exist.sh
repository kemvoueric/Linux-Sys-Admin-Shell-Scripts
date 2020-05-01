#! /bin/bash
# Desc: check that files in the below dirs exist 

FILE=/etc/passwd
/etc/group
/etc/group
/etc/shadow
/etc/nsswitch.conf
/etc/sshd_ssh_config
/etc/fake

echo
#for files in $FILES
#do
   if [ -f $FILE ]
   then
   echo "$FILE exist"
   else
   echo "$FILE does not exist"
   echo
   fi
#done

