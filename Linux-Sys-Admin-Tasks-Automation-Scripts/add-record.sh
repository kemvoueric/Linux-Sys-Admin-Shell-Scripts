#! /bin/bash
# Desc: this script will add system inventory to database file

clear
echo please enter hostname
read host
echo
        grep -q $host /home/jenkins/professional-scripts/database
        if [ $? -eq 0 ]
        then
        echo ERROR -- hostname $host already exist
        echo
        exit 0
        fi

echo please enter IP address
read ip
echo
       grep -q $ip /home/jenkins/professional-scripts/database
       if [ $? -eq 0 ]
       then
       echo ERROR -- IP $ip already exist
       echo
       exit 0
       fi

echo please enter description
read desc
echo

echo $host $ip $desc >> /home/jenkins/professional-scripts/database
echo the provided record has been added

