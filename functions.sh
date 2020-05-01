#! /bin/bash

f="$1"
identify () {
[ -f "$f" ] && { echo "$f is a regular file"; exit 0; }
[ -d "$f" ] && { echo "$f is a directory"; exit 0; }
[ -L "$f" ] && { echo "$f is a symbolic link"; exit 0; }
}
[ $# -eq 0 ] && { echo "You've not supplied any argument"; exit 1; }

## calling function
identify

