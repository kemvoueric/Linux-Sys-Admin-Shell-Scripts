#! /bin/bash
# Desc: rename all files ending with .txt

for filename in *.txt

do 
    mv $filename ${filename%.txt}.none
done
