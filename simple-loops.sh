#! /bin/bash
## scrip 1
#i=1
#for day in Mon Tue Wed Thur Fri Sat Sun
#do
#echo "Weekday $((i++)) : $day"
#done

## script 2
#for (( i=1; i<=10; i++ ))  # condition, should increment from 1 and cant be < to 10
#do
#echo $i
#done

## script 3
for i in {1,2,3,4}
do
	echo "this is the value  $i"
done

echo "*****************************"

## script 4
for i in {0,-5,1,-6,9}
do
	echo "this is the value  $i"
done
echo "*****************************"

## script 4
for i in {0,"dog",-1e+.qw,"hello there",9}
do
	echo "this is the value  $i"
done
echo "##############################"echo "end"

## script 5
for i in {0,"danger","dog","hello there",9}
do
	echo "this is the value  $i"
	if [ $i == "danger" ]; then
		echo "**** WE have to stop the loop here!!!!!****"
		break
	fi
done
echo ""
echo "##############################"

## script 6
for i in ./*
do 

	echo " File  $i  "
done

## script 7
[ $# -eq 0 ] && { echo "You've not passed any arguments"; exit 1; }
for i in $*
  do 
  echo 
  echo "< $i >"
  [ -f $i ] && cat $i || echo "$i file not found"
  sleep 0.5
  echo "----------------"
done

