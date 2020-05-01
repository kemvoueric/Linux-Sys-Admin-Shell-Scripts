#! /bin/bash
# Desc: this script will show all information about the current server
# ping -w is the time out value if google dont respond
# && int="connected" || int="Disconnected" -> somewhat used as an if-condition

clear
echo -e "\e[4mSystem information\e[0m"              # option to to underline system information
sleep 0.5
ping -c 1 -w 5 www.google.com &> /dev/null && int="connected" || int="Disconnected"  
echo -e "\e[32mInternet :\e[0m" "\e[31m$int\e[0m"
sleep 0.5
os=$(uname -o)
echo -e "\e[32mOperating system type :\e[0m" "\e[31m$os\e[0m"
sleep 0.5
type=`sudo dmidecode -s system-manufacturer`   # maybe not best practise to use sudo but this is a test
echo -e "\e[32mServer type :\e[31m$type\e[0m" 

# Check OS Release Version and Name
###################################

OS=$(uname -s)
if [ "${OS}" = "Linux" ]; then
   if [ -f /etc/redhat-release ]; then
   DIST=`cat /etc/redhat-release | awk '{print $1,$2}'`
   elif [ -f /etc/SuSE-release ]; then
   DIST="SuSE"
   elif [ -f /etc/mandrak-release ]; then
   DIST="Manrake"
   elif [ -f /etc/debian_version ]; then
   DIST="Debian"
   fi
fi
echo -e "\e[32mDistribution :\e[0m" "\e[31m$DIST\e[0m"

# Check Architecture
echo -e "\e[32mDistribution :\e[0m" "\e[31m$DIST\e[0m"
sleep 0.5
architecture=$(uname -m)
echo -e "\e[32mArchitecture :\e[0m" "\e[31m$architecture\e[0m"
sleep 0.5

# Check Kernel Release
kernelrelease=$(uname -r)
echo -e "\e[32mKernel Release :\e[0m" "\e[31m$kernelrelease\e[0m"
sleep 0.5

# Check hostname
echo -e "\e[32mHostname :\e[0m" "\e[31m$HOSTNAME\e[0m"
sleep 0.5

# Check Internal IP
internalip=$(hostname -I)
echo -e "\e[32mInternal IP :\e[0m" "\e[31m$internalip\e[0m"
sleep 0.5

# Check DNS
nameservers=$(cat /etc/resolv.conf | sed '1 d' | awk '{print $2}')
echo -e "\e[32mName Servers :\e[0m" "\e[31m$nameservers\e[0m"
sleep 0.5 

# Check Logged In Users
who>/tmp/who
echo -e "\e[32mLogged In users :\e[0m"
echo -e "\e[31m`cat /tmp/who`\e[0m"
sleep 0.5

# Check RAM and SWAP Usages
free -h > /tmp/ramcache
echo -e "\e[32mRam Usages :\e[0m"
sleep 0.5
echo -e "\e[31m`cat /tmp/ramcache | grep -vi Swap`\e[0m"
echo -e "\e[32mSwap Usages :\e[0m"
sleep 0.5
echo -e "\e[31m`cat /tmp/ramcache | grep -vi Mem`\e[0m"
sleep 0.5

# Check Disk Usages
df -h | grep -v tmpfs > /tmp/diskusage
echo -e "\e[32mDisk Usages :\e[0m"
sleep 0.5
echo -e "\e[31m`cat /tmp/diskusage`\e[0m"
sleep 0.5

# Disks Details
echo -e "\e[32mDisk details :\e[0m"
echo -e "\e[31m`/usr/sbin/fdisk -l| grep -i Disk| egrep -v 'dos|identifier|mapper'`\e[0m"
sleep 0.5

# Check Load Average
loadaverage=$(top -n 1 -b | grep "load average:" | awk '{print $10 $11 $12}')
echo -e "\e[32mLoad Average :\e[0m" "\e[31m$loadaverage\e[0m"

# Check System Uptime
tecuptime=$(uptime | awk '{print $3,$4}' | cut -f1 -d,)
echo -e "\e[32mSystem Uptime Days/(HH:MM) :\e[0m" "\e[31m$tecuptime\e[0m"
sleep 0.5

# Check Routing Table
netstat -rn | grep -v table > /tmp/rou
echo -e "\e[32mKernel IP routing table :\e[0m"
sleep 0.5
echo -e "\e[31m`cat /tmp/rou`\e[0m"
