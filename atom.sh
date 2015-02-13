#!/bin/bash
# check if script is running with root privileges

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

function dependencies(){
echo "Installing dependecies ..."
# fetches updates if there are some
   apt-get update&& apt-get upgrade -y -qq ;apt  -y -qq install curl >>/dev/null 2&>1
# installes nodejs from nodesource github project

if ! [ -f /etc/apt/sources.list.d/nodesource.list  ];then
curl -sL https://deb.nodesource.com/setup | sudo bash -  >>/dev/null 2&>1
apt-get install -y -qq git git-core build-essential libgnome-keyring-dev fakeroot nodejs && >>/dev/null 2&>1
 npm config set python /usr/bin/python2 -g
else
apt-get install -y -qq git git-core build-essential libgnome-keyring-dev fakeroot nodejs >>/dev/null 2&>1
 npm config set python /usr/bin/python2 -g
clear
fi

}
#cloning atom
function clone (){
  if ! [ -d /opt/atom/  ];then
echo "cloning atom ..."
sudo git clone https://github.com/atom/atom  "/opt/atom"
else
echo "cloning faild!"
fi 
clear
cd /opt/atom &&
git fetch -p
 git checkout $(git describe --tags `git rev-list --tags --max-count=1`) &&
cd /opt/
if ! [ -d /src/atom  ];then
sudo mkdir -p /src/atom
fi
}
function  build(){
#build atom  
cd /opt/atom
 ./script/build --build-dir /src/atom
 ./script/grunt install --install-dir /opt/atom
}
#mooving files to /usr/share/*
function move(){
  mv /src/atom/Atom atom/
  mv /src/atom/atom/  /usr/share/
  mv src/atom/icons/* /usr/share/icons
 cp -r /opt/atom/bin /usr; sudo cp -r /opt/atom/share/ /usr
}
#fixing permissions to avoid atom issue #5512
function fix_permissions(){
  chmod -R 777 ~/.atom
}
function  fetch_plugins (){
apm install drupal-info-file
apm install drupal
apm install language-drupal
apm install  git-plus

}
function cleanup (){
 rm -r /src/atom
rm -r /tmp/* /opt/atom

clear
}
function run(){
  dependencies
  clone
  build
  move
  fix_permissions
  fetch_plugins
  cleanup
}
run
echo  "Atom is ready now!"
exit
