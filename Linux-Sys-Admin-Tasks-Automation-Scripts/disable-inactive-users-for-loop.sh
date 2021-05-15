#! /bin/bash
# Desc: disable inactive users
# lastlog  - reports the most recent login of all users or of a given user
# a=`lastlog | tail -n+2 | grep 'test' | awk '{print $1}'` | xargs -I{} usermod -L {}


a=`lastlog | tail -n+2 | grep 'test' | awk '{print $1}'`
for i in $a
do
            usermod -L $i
done
