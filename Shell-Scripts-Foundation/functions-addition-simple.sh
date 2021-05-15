#! /bin/bash
# call a function specifying an argument

add ()
{
  a=$1
  b=$2
  d=$(( a + b ))
  echo $d
}
echo "please enter two number"
read a b
add $a $b   

