#!/bin/bash 
deb=https://github.com/atom/atom/releases/download/v0.179.0/atom-amd64.deb
bdir=/opt/.drubuntu
cd "$bdir"
wget -q "$deb" -O "bdir"/atom.deb  >>/dev/null 2&>1
echo -e    "${lightgreen}Atom{NC} ${white}  ${highfin} {NC} ${ lightred} ${atombrandtext} ${NC}  ${white} ${isinstallingnowmssg} ${NC}"
sudo dpkg -i "bdir"/atom.deb >>/dev/null 2&>1
sudo apt-get install -y -f >>/dev/null 2&>1
sudo dpkg -i "bdir"/atom.deb
rm "bdir"/atom.deb
rm --"$0"
