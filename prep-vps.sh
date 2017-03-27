#!/bin/bash
# Update OS
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

# Pip
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
rm get-pip.py

# Tools
# altdns
cd /opt/
git clone https://github.com/infosec-au/altdns.git
cd altdns
pip install -r requirements.txt
echo 'export PATH=$PATH:/opt/altdns/' >> ~/.profile
# dirb
cd /opt/
git clone https://github.com/seifreed/dirb.git
cd dirb
./configure
make
# dirsearch
cd /opt/
git clone https://github.com/maurosoria/dirsearch.git
echo 'export PATH=$PATH:/opt/dirsearch/' >> ~/.profile
# dnsrecon
cd /opt/
git clone https://github.com/darkoperator/dnsrecon.git\
pip install -r requirements.txt
# nikto
git clone https://github.com/sullo/nikto.git
echo 'export PATH=$PATH:/opt/nikto/program/' >> ~/.profile

# Links
ln -s /usr/share/wordlists /w

# TODO: cp dictonaries to /usr/share/wordlists
