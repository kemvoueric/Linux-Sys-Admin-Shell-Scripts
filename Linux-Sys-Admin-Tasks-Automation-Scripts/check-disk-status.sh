#! /bin/bash
# Desc: Disk space status
# awk cmd says if the disk space is >= 10 then print it on the screen not entirely sure on the 0 yet

echo
echo Follwing is the disk space status
echo
df -h | awk '0+$5 >= 10 {print}' | awk '{print $5 $6}'
