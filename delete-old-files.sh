#! /bin/bash
# Author: Olivier O.
# Desc: delete files older than 90 days & rename them

#find /home/jenkins/professional-scripts -mtime +90 -exec rm {} \;
find /home/jenkins/professional-scripts -mtime +90 -exec mv {} {}.old \;
