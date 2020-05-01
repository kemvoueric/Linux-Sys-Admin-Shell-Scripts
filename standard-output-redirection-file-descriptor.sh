#! /bin/bash
# Desc: learning STDIN, STDOUT and STDERR
# 2> <filename> /dev/null/ redirect all error to a file
# > <filename> 2>&1 or &> <filename> send both stdout and stderr to the same file
# tee command example: ls -l | head -n 10 | tee /tmp/123

# script 1
#exec 5> /tmp/test.txt
#echo "This is my new file" >&5
#cat /etc/redhat-release >&5
#uptime >&5

# script 2






