
#!/bin/bash

function dependencies(){
  sudo apt-get update&&sudo apt-get upgrade -y -qq
if ! [ -f /etc/apt/sources.list.d/nodesource.list  ];then
curl -sL https://deb.nodesource.com/setup | sudo bash -
else
echo "Installing dependecies ..."
sudo apt-get install -y -qq git git-core build-essential libgnome-keyring-dev fakeroot nodejs >>/dev/null 2&>1
sudo npm config set python /usr/bin/python2 -g
clear
fi

}
function clone (){
  if ! [ -d /opt/atom/  ];then
echo "cloning atom ..."
sudo git clone https://github.com/atom/atom  "/opt/atom"
else
echo "cloning faild!"
fi 
clear
cd /opt/atom &&
sudo git fetch -p
sudo git checkout $(git describe --tags `git rev-list --tags --max-count=1`)&&
cd /opt/
if ! [ -d /src/atom  ];then
sudo mkdir -p /src/atom
fi

}
function  build(){
  
cd /opt/atom
sudo ./script/build --build-dir /src/atom
sudo ./script/grunt install --install-dir /opt/atom
}
function move(){
  sudo mv /src/atom/Atom/ /usr/share
  mv src/atom/icons/* /usr/share/icons
  sudo  cp -r /opt/atom/bin /usr; sudo cp -r /opt/atom/share/ /usr
}
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
  sudo rm -r /src/atom
sudo rm -r /tmp/* /opt/atom

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
echo "Atom ist installed now. Due to some bugs you need to run Atomwith sudo privileges"
echo ""
echo "Enter "sudo atom"
exit
