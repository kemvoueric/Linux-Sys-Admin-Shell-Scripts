#! /bin/bash
# Desc: this script will delete system from inventory database file

clear
echo please enter hostname or IP address
read hostip
echo
        grep -q $hostip /home/jenkins/professional-scripts/database
        if [ $? -eq 0 ]
        then
        echo
        sed -i '/'$hostip'/d' /home/jenkins/professional-scripts/database
        echo $hostip has been delelted
        else
        echo record $hostip does not exist
        fi
        
