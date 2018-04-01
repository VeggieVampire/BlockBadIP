#!/bin/bash
##########################
# created by Nick Farrow #
##########################
cd ~

echo "you are unblocking all IPs in your blocklist!"
echo "rerun ./BlockBadIPs.sh to add IPs back in the list"

echo checking blocked list
echo "COMMAND: sudo iptables -nL"
sudo iptables -nL
sudo iptables -nL |grep DROP|awk '{print $4}' > bad_ip_list

for x in `cat /home/$USER/bad_ip_list`
 do
	echo Unblocking $x
	sudo iptables -D INPUT -s $x -j DROP
 done
rm -rf bad_ip_list
