#!/bin/bash
wget -O /opt/.drubuntu/atom-amd64.deb  https://github.com/atom/atom/releases/download/v0.166.0/atom-amd64.deb
dpkg -i /opt/.drubuntu/atom-amd64.deb
rm /opt/.drubuntu/atom-amd64.deb
apt-get install -y -qq git git-core
apm install drupal-info-file
apm install drupal
apm install language-drupal
apm install  git-plus
rm -- "$0"
exit
