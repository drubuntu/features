#!/bin/bash
#this block tells the user to run the script with root privileges
if [ `whoami` != root ]; then
    echo "Please run this script as root or using sudo"
    exit
    4
fi
echo "We install haml sass compass and less ruby gems for you now!"
echo ""
echo "bdoc and hanna are installed, too. So you  have syntax reference on board"
echo ""
echo "See http://drubuntu.info/qlink/ruby"
#installs sass and compass from ubuntu repos
echo "Setting up Ruby now"
sudo apt-get install -y -qq ruby1.9.1-full 
# installs gem update function
echo "Install Rubygems update now"
sudo gem install rubygems-update > /dev/null 2>&1
#installs less again to get documentation
echo "LESS Ruby gem is installing..."
sudo gem install less > /dev/null 2>&1
#same for sass
echo "SASS Ruby gem is installing..."
sudo gem install sass > /dev/null 2>&1
#same for compass
echo "Compass Ruby gem is installing..."
sudo gem install compass > /dev/null 2>&1
# same for haml
echo "HAML is installing..."
sudo apt-get -y -qq install ruby-haml > /dev/null 2>&1
#documentation offline view tools
echo "bdoc and hanna are istalling..."
sudo gem install bdoc  hanna > /dev/null 2>&1
#update installed gems
sudo gem update rubygems > /dev/null 2>&1
exit