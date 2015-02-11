#!/bin/bash
bdir=/opt/.drubuntu
if ! [ -f /etc/apt/sources.list.d/nodesource.list  ];then
curl -sL https://deb.nodesource.com/setup | sudo bash -
else
sudo apt-get install -y -qq git git-core build-essential libgnome-keyring-dev fakeroot nodejs

fi
if ! [ -d /opt/atom/  ];then
sudo git clone https://github.com/atom/atom  "/opt/atom"
sudo npm config set python /usr/bin/python2 -g
else
echo "cloning faild"
fi &&
clear
cd /opt/atom &&
sudo git fetch -p
sudo git checkout $(git describe --tags `git rev-list --tags --max-count=1`)&&
cd /opt/
if ! [ -d /src/atom  ];then
sudo mkdir -p /src/atom
fi
cd /opt/atom
#  ./script/bootstrap&&
sudo ./script/build --build-dir /src/atom
sudo ./script/grunt install --install-dir /opt/atom
apm install drupal-info-file
apm install drupal
apm install language-drupal
apm install  git-plus
exit
