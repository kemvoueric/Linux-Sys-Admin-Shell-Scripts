#! /bin/bash
# Author: Olivier O.
# Date: 24.04.2020
# This script will ping a multiple remote hosts and notify
# decided to use for loop because its going to go through multiple IPs
# my cron to test: 15 10 * * * /home/jenkins/professional-scripts/ping-script-all.sh | mail -s "connectivity status" olivierots@hotmail.com


hosts="/home/jenkins/professional-scripts/myhosts.txt"
for ip in $(cat $hosts)
do
      ping -c1 $ip &> /dev/null

      if [ $? -eq 0 ]                   #exit status
      then						
      echo $ip check OK
      else
      echo $ip check NOT OK
      fi
done
