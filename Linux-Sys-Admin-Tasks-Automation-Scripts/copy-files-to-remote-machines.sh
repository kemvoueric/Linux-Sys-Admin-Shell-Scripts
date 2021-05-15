#! /bin/bash
# Description: this script will copy files to remote hosts

a=`cat/home/olivier/file-with-hosts`
for i in $a  #i do not have multiple servers in my home lab so ...
do
    scp somefile $i:/tmp  #copy the files to the remote servers specifically in the tmp folder
done




