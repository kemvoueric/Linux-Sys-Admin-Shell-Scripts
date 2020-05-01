#! /bin/bash
# This script will ping a remote host and notify
#ping -c1 8.8.8.456
#ping -c1 8.8.8.8 &> /dev/null           #any output sent here will just disapear & we dont need this output

hosts="8.8.8.8"
ping -c1 $hosts &> /dev/null

      if [ $? -eq 0 ]                   #exit status
      then						
      echo $hosts check OK
      else
      echo $hosts check NOT OK
      fi
       
