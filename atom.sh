#!/bin/bash 
deb=https://github.com/atom/atom/releases/download/v0.179.0/atom-amd64.deb
bdir=/opt/.drubuntu
function  fetch_plugins (){
apm install drupal-info-file
apm install drupal
apm install language-drupal
apm install  git-plus
cd "$bdir"
wget -q "$deb" -O "bdir"/atom.deb  >>/dev/null 2&>1
echo -e    "${lightgreen}Atom{NC} ${white}  ${highfin} {NC} ${ lightred} ${atombrandtext} ${NC}  ${white} ${isinstallingnowmssg} ${NC}"
sudo dpkg -i "bdir"/atom.deb >>/dev/null 2&>1
sudo apt-get install -y -f >>/dev/null 2&>1
sudo dpkg -i "bdir"/atom.deb
rm "bdir"/atom.deb
fetch_plugins
rm --"$0"
