#!/bin/bash
if [ `whoami` != root ]; then
    echo "Please run this script as root or using sudo"
   else
pwd
echo "You'll be notified if we're ready"
echo ""
echo "if Java is not installed you have to accept their terms to be able to use Aptana Studio 3"
sudo apt-get -y -qq install curl
sleep 5
downloadurl=https://raw.githubusercontent.com/drubuntu/features/master/features/
system=`sudo uname -m`
apt-get install --force-yes -y -qq unzip dmidecode >>/dev/null 2&>1
if [ ! -f  /etc/apt/sources.list.d/webupd8team-java-trusty.list ] ;then

apt-add-repository -y ppa:webupd8team/java
sudo apt-get -qq update
echo debconf shared/accepted-oracle-license-v1-1 select true | \
  sudo debconf-set-selections
  
   echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  sudo debconf-set-selections
  sudo apt-get  install -y oracle-java8-installer
fi
apt-get install -qq -y tk python-tk git-core libjpeg62 libwebkitgtk-1.0-0
 >>/dev/null 2&>1
wget -q "$downloadurl"/archivesources.sh -O archivesources.sh  -O archivesources.sh >>/dev/null 2&>1
. archivesources.sh
if [ $system="x86_64" ] ;then
curl -Ls -A  "User-Agent: Mozilla/5.0 (Linux; U; Windows NT 5.1; en-US; rv:1.9.2.12) Gecko/20101026 Firefox/3.6.12" -O $dlx64
unzip "$x64" -d /opt
rm "$x64"
else
curl -Ls -A  "User-Agent: Mozilla/5.0 (Linux; U; Windows NT 5.1; en-US; rv:1.9.2.12) Gecko/20101026 Firefox/3.6.12" -O $dlx86
unzip "$x86" -d /opt
rm "$x86"
fi
rm archivesources.sh
cat << EOF >> /usr/share/applications/aptana.desktop
[Desktop Entry]
Name=Aptana Studio 3
Comment=Development IDE for Web developers
Exec=/opt/Aptana_Studio_3/AptanaStudio3
Terminal=false
Type=Application
Icon=/opt/Aptana_Studio_3/icon.xpm
StartupNotify=true
Categories=GNOME;Applications;Development;
Keywords=Aptana;IDE;aptana;studio

EOF
fi
echo "Aptana Studio 3 will be avialable at next login time!"
rm archivesources.sh
rm -- "$0"
