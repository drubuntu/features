#!/bin/bash
bdir=/opt/.drubuntu
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y -qq git git-core build-essential libgnome-keyring-dev fakeroot npm
git clone https://github.com/atom/atom.git "$HOME"/atom
clear
cd "$HOME"/atom &&
git fetch -p
git checkout $(git describe --tags `git rev-list --tags --max-count=1`)
if ! [ -d /src/atom  ];then
sudo mkdir -p /src/atom
fi
"$HOME"/atom/script/build --build-dir /src/atom/ | sudo node -
"$HOME"/atom/script/grunt install  --install-dir /opt/atom | sudo node -
apm install drupal-info-file
apm install drupal
apm install language-drupal
apm install  git-plus
rm -r "$HOME"/atom
rm -- "$0"
exit
