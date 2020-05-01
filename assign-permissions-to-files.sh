#! /bin/bash
# Desc: assign permission to the files you've created

total=`ls -l edward* | wc -l`
echo it will take $total seconds to assign permisisons ...

for i in edward.*

do 
   echo assigning permisisons to $i
   chmod a+x $i
   sleep 0.5

done

