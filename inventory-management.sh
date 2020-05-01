#! /bin/bash
# Desc: this script will add or delete a record from the database file

clear
echo
echo please select one of the follwing option
echo
echo 'a = add a record'
echo 'b = delete the record'
echo
      read choice
      case $choice in 
a)    /home/jenkins/professional-scripts/add-record.sh;;
b)    /home/jenkins/professional-scripts/delete-record.sh;;
*)    echo invalid choice -  Bye.

      esac

