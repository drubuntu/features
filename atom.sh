#!/bin/bash
bdir=/opt/.drubuntu
sudo apt-get install -y -qq git git-core build-essential libgnome-keyring-dev fakeroot npm
git clone https://github.com/atom/atom "$bidr"
clear
cd /opt/.drubuntu/atom
git fetch -p
git checkout $(git describe --tags `git rev-list --tags --max-count=1`)
if ! [ -d /src/atom  ];then
sudo mkdir -p /src/atom
fi
sudo ./opt/.drubuntu/atom/script/build --build-dir /src/atom/
sudo ./opt/.drubuntu/atom/script/grunt install  --install-dir /opt/atom
apm install drupal-info-file
apm install drupal
apm install language-drupal
apm install  git-plus
rm -- "$0"
exit
