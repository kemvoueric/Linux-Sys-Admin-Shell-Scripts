#! /bin/bash
# Desc: Local & Global Variables
# a and b are local and c is global var. (not too sure i understand this :)) 

a=10
b=30

function add () {
local c=$(( a + b ))
echo $c
}
add
echo $c
echo $a
echo $b
