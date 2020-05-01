#! /bin/bash
# Desc: send an email to adminstrator 
# uniq = dont repeat the same error msg more than once
# schedule a cron job
# filtered-messages file is created in the taillog script

IT="olivierots@hotmail.com,olivierots@yahoo.fr"
if [ -s /tmp/filtered-messages ]    #if the file exist
         then
         cat /tmp/filtered-messages | sort | uniq | mail -s "syslog messahes" $IT
         rm /tmp/filtered-messages  #we remove the file because we do not want old msgs anymore but new
         else
         fi
 

