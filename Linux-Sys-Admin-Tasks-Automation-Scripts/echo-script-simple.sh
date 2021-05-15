#! /bin/bash

# Hostname info
echo " *** hostname info *** "
hostnamectl
echo ""
echo

# file system disk space usage
echo " *** file system disk space usage *** "
df -h
echo ""
echo

# free & used RAM in the system
echo " *** free & used RAM in the system *** "
free -h
echo ""
echo

# system uptime & load
echo " *** free & used RAM in the system *** "
uptime
echo ""


