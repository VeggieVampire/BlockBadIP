#!/bin/bash
# Simple iptables IP blocking script 
##########################
# created by Nick Farrow #
##########################
RED='\033[0;31m'        #RED
GREEN='\033[0;32m' 		#GREEN
YELLOW='\033[0;33m' 	#YELLOW
NC='\033[0m' 			# No Color

cd ~
echo "Getting block list from"
echo "blocklist.de"

#clear text
#wget -O bad_ip_list 'http://api.blocklist.de/getlast.php?time=00:00:00'

#non clear text
wget -O bad_ip_list 'https://api.blocklist.de/getlast.php?time=300'

for x in `cat /home/$USER/bad_ip_list`
 do
	#checks current iplist from iptables and writes to a file
	sudo iptables -nL > current_bad_ip_list

	#checks if current ip is in banned iptables and writes it to a file
	cat current_bad_ip_list|grep -i $x > foundIP 

	#checks if current ip is in file if not found added it to blocked iptables
  if [ -s foundIP ]
  then
    echo $x already blocked
  else
    echo blocking $x
	sudo iptables -A INPUT -s $x -j DROP
  fi
  done
rm -rf bad_ip_list
rm -rf current_bad_ip_list
rm -rf foundIP
