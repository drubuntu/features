#!/bin/bash 
deb=https://github.com/atom/atom/releases/download/v0.179.0/atom-amd64.deb
bdir=/opt/.drubuntu
function  fetch_plugins (){
apm install drupal-info-file
apm install drupal
apm install language-drupal
apm install  git-plus
cd "$bdir"
}
wget --progrss-bar "$deb" -O "$bdir"/atom.deb  >>/dev/null 2&>1
sudo gdebi -y "$bdir"/atom.deb
rm "bdir"/atom.deb
fetch_plugins
rm --"$0"
