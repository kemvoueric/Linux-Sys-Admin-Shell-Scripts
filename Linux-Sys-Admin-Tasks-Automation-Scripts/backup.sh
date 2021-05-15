#! /bin/bash
# Desc: backup /etc and /var filesystems

tar cvf /tmp/backup.tar /var /etc
gzip /tmp/backup.tar
find backup.tar.gz -mtime -1 -type f -print &> /dev/null  #-mtime & -1 means if it was created today

if [ $? -eq 0 ]
      then
      echo backup was created
      echo
      echo archiving backup
      #scp /tmp/backup.tar.gz root@192.168.1.x:/path  #transfer it to another location
      else
      echo backup failed
fi
