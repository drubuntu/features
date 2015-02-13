#!/bin/bash 
deb=https://github.com/atom/atom/releases/download/v0.179.0/atom-amd64.deb
bdir=/opt/.drubuntu
function  fetch_plugins (){
apm install drupal-info-file
apm install drupal
apm install language-drupal
apm install  git-plus
}
cd "$bdir"
echo  "Downloading Atom ..."
wget --progrss-bar "$deb" -O "$bdir"/atom.deb
echo  "Installing Atom ..."
sudo gdebi -n "$bdir"/atom.deb >> /dev/null 2>&1
rm "bdir"/atom.deb
echo  "get Drupal Plugins ..."
fetch_plugins
rm --"$0"
