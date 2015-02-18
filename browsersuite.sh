#!/bin/bash
clear
echo "We'll install the latest browsers for you"
echo "You'll be noted with browser will be installed"
echo "Do not close the terminal window or interrupt the script untill you see the\
      command prompt, agian!" 
echo ""
#download and install google chrome 
echo "Chrome Stable will be installed now ..."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb; >/dev/null 2>&1
sudo dpkg -i google-chrome-stable_current_amd64.deb;   >/dev/null 2>&1
sudo apt-get install -qq -f ;
clear
echo "Google Chrome is installed, now"
echo ""
#download and install chromiun
echo "Chromium will be installed now ..."
sudo apt-get install -y -qq chromium-browser >/dev/null 2>&1 
clear
echo "Google Chrome is installed now."
echo "Chromium is installed now."
echo ""
#add and install firefox developer edition
echo "Firefox Developer Edition will be installed now."
sudo add-apt-repository -y  ppa:ubuntu-mozilla-daily/firefox-aurora 
sudo apt-get -y -qq update;
sudo apt-get -y -qq install firefox-locale-de >/dev/null 2>&1
sudo apt-get -y -qq install firefox >/dev/null 2>&1
clear
echo "Google Chrome is installed, now."
echo "Chromium is installed now."
echo "Firefox Develope Edition is installed now"
echo ""
# add and install opera
echo "Opera Beta, will be installed now."
echo opera-beta opera-beta/add-deb-source select true | sudo debconf-set-selections
debconf-set-selections <<< ' opera-beta/add-deb-source true'
wget -O - http://deb.opera.com/archive.key | sudo apt-key add -
wget -q -O opera.deb http://operasoftware.pc.cdn.bitgravity.com/pub/opera-beta/26.0.1656.20/linux/opera-beta_26.0.1656.20_amd64.deb;
sudo dpkg -i opera.deb; >/dev/null 2>&1
sudo apt-get install -y -qq -f >/dev/null 2>&1
sudo rm opera.deb
clear
echo "Google Chrome is installed now."
echo "Chromium is installed now."
echo "Firefox Develope Edition is installed, now."
echo "Opra is installed now"
echo ""
#safari and ie here it goes 
echo "Safari, will be installed now"
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
sudo apt -y install   wine1.4 >/dev/null 2>&1
wget http://appldnld.apple.com/Safari5/041-5487.20120509.INU8B/SafariSetup.exe >/dev/null 2>&1
wine SafariSetup.exe /qn >/dev/null 2>&1
rm SafariSetup.exe
clear
echo "Google Chrome is installed, now."
echo "Chromium is installed now."
echo "Firefox Develope Edition is installed now."
echo "Opra is installed now"
echo "Safari is installed now." 
echo ""
echo "Thanks for your patience"
exit

