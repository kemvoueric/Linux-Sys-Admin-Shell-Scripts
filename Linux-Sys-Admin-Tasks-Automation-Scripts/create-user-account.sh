#! /bin/bash
# Desc: create a user account, add a description, UID,check if the user or UID already exist 
# -q, --quiet, --silent  suppress all normal output

echo "please provide a username?"
read u
echo

grep -q $u /etc/passwd
        if [ $? -eq 0 ]
        then
        echo ERROR -- USER $u already exist
        echo please choose another username
        echo
        exit 0
        fi

echo "please provide user's description?"
read d
echo

useradd $u -c "$d"     #"" to avoid spacing errors in the desc
echo $u account has been created

echo "do you want to specify the user's ID (y/n)?"
read ynu
echo

     if [ $ynu == y ]  # == is for integers
     then
     echo "please enter UID"
     read uid
          grep -q $uid /etc/passwd
          if [ $? -eq 0 ]
          then
          echo ERRROR -- UserID $uid already exist
          echo
          exit 0
          else
          useradd $u -c "$d" -u $uid
          echo
          useradd $u -c "$d" 
          echo
          echo $u has been created
          fi
     
     elif [ $ynu == n ]
     then
     echo No worries we will assign a UID
     useradd $u -c "$d"
     echo
     echo $u has been created
     fi

