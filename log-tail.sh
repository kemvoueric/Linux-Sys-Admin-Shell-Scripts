#! /bin/bash
#Desc: this script will only log defined keywords
#fn0 means live/latest incoming traffic
#while read line: run it in a loop so it wont stop and read line (our variable)
#egrep: to grep multiple words
# use "logger -t error "Olivier is testing"" to test your script to send msgs to var/log/msgs or nohup

tail -fn0 /var/log/messages | while read line
do
echo  $line | egrep -i "refused|invalid|error|fail|lost|shut|down|offline"
      if [ $? = 0 ]    #if it find something
      then
      echo $line >> /tmp/filtered-messages
      fi
done 
      

