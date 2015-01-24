#!/bin/bash
if [ `whoami` != root ]; then
    echo "Please run this script as root or using sudo"
    exit
4
fi
apt-get install -y plymouth-theme-script #installs script plymouth theme to make changes work.
dlurl=https://raw.githubusercontent.com/drubuntu/installation/master/files/grub
grubfilesurl=files/grub/
savedir=/opt/.drubuntu/drubuntu/
plymouththemedir=/lib/plymouth/themes/
grubdir=/etc/default/

file1=drubuntu.grub
file2=drubuntu.plymouth
file3=drubuntu.script
file4=grub.file
file5=logo_blurred.png
file6=logo.png
file7=password_field.png
file88=password_field16.png
file9=ubuntu_logo.png
file10=ubuntu_logo16.png
cd /opt/.drubuntu

mkdir "$savedir"
cd "$savedir"
wget $dlurl$file1 
wget $dlurl$file2 
wget $dlurl$file3 
wget $dlurl$file4 
wget $dlurl$file5 
wget $dlurl$file6 
wget $dlurl$file7 
wget $dlurl$file8 
wget $dllurl$file9 
wget $dllurl$file10 

mv grub.file grub
cp -r "$savedir"grub  "$grubdir"				#copy file to /etc/default and replace existing file.
rm "$savedir"$file1
cp -r /opt/.drubuntu/drubuntu /lib/plymouth/themes
rm -r "$savedir"									#removes savedir for cleanup.
cd													#the next line sets up drubuntu plymouth theme as default.
update-alternatives --install /lib/plymouth/themes/default.plymouth default.plymouth /lib/plymouth/themes/drubuntu/drubuntu.plymouth 100 >/dev/null 
update-grub >> /dev/null                                  	#update grub.
update-initramfs -c -k all > /dev/null						#generate new kernel  .
update-initramfs -u -k all > /dev/null
#sudo reboot -p										#reboot and setup plymouth on shutdown
