#! /bin/bash
# Desc: find zombie processes & kill it
# use something like "sleep 600" to spin up a fake process
# test with "xargs -I{} echo {}" first befor eusing kill - you cn also use a loop

ps -ef | grep -i "sleep 600" | grep -v grep | awk {print $2}' | xargs -I{} kill {}
echo all sleeping processes are killed

