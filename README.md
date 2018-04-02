# BlockBadIPs
Simple iptable blocking script. IP list from blocklist.de

# Install
sudo apt-get install -y git <br>
sudo apt-get install -y iptables-persistent <br>
cd ~ <br>
git clone https://github.com/VeggieVampire/BlockBadIPs <br>
cd BlockBadIPs<br>
chmod 777 * <br>

# OPTIONAL
Add the following command in /etc/rc.local to reload the rules in every reboot. but It's rather bad idea to place it in rc.local since there would be an open window gap between services start and firewall policy apply. <br>
iptables-restore < /etc/iptables.conf <br>

# Run
cd BlockBadIPs <br>
./BlockBadIPs.sh <br>


headless mode (No Output)<br>
./BlockBadIPs.sh 1>/dev/null 2>/dev/null <br>

# UnInstall
cd BlockBadIPs <br>
./UnBlockAllBadIPs.sh <br>
./UnBlockAllBadIPs.sh <br>
cd ..
rm -rf BlockBadIPs
