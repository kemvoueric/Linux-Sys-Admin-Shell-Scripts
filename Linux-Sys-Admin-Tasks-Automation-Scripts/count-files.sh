#! /bin/bash
# Desc: this script will verify the totoal number of files

# define variable a
a=`ls -l file* | wc -l`

if [ $a -eq 20 ]
   then
   echo yes there are $a files
   else
   echo files are less than 20
   fi
