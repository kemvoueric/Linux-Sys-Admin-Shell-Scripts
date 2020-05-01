#! /bin/bash
# Desc: list users logged in by date

today=`date | awk '{print $1,$2,$3i}'`
last | grep "$today" | awk '{print $1}'




