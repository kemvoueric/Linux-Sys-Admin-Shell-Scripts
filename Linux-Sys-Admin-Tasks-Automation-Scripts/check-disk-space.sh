#! /bin/bash
# Desc: check for disk space
# tail -n+2: get rid of this line "Filesystem  Size  Used Avail Use% Mounted on"
# cut -d'%' -f1 ==> get rid of the % sign and display the first field only


a=`df -h | egrep -v "tmpfs|devtmpfs" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1`

for i in $a
do
    if [ $i -ge 50 ]
    then
    echo Disk space is $i% on the folowing partition: `df -h | grep $i` on $(hostname)
    fi
done

