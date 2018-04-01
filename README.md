# BlockBadIPs
Simple iptable blocking script. IP list from blocklist.de


Basic Properties of the BlockBadIPs-master.zip <br>
MD5:	0de91c8f6374d18347de66bad2559254 <br>
SHA-1:	dd80e6972f20a366ab0b7acae3dab96529e45fa5 <br>
File Type	ZIP: <br>
Magic	Zip archive data, at least v1.0 to extract <br>
SSDeep:	48:KUkPPEILC5tYNO8JQtj+gD3dCfvjVoBxuYdCGO:hk3EOQtwQtj+QEfvRozuYEL <br>
TRiD	ZIP: compressed archive (100%) <br>
File Size:	1.71 KB <br>
https://www.virustotal.com/#/file/90755a0b946793c04b5c204d627eb607d0bb63a60c110cbc56d60885c7bbf81b/details

# Install
sudo apt-get install -y git <br>
cd ~ <br>
git clone https://github.com/VeggieVampire/BlockBadIPs <br>
cd BlockBadIPs<br>
chmod 777 * <br>

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
