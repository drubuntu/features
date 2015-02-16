#!/bin/bash
if [ `whoami` != root ]; then
    echo "Please run this script as root or using sudo"
    exit
4
fi
plymouthlogo(){
apt-get install -y plymouth-theme-script > /dev/null #installs script plymouth theme to make changes work.
git colne https://github.com/drubuntu/installation.git "$Home"/installation
grubfilesurl=files/grub/
instrepofolder="$HOME"/installation
savedir=$instrepofolder/files/grub/
pltheme=$instrepofolder/files/drubuntu
plymouththemedir=/lib/plymouth/themes
grubdir=/etc/default/



				#copy file to /etc/default and replace existing file.
mv "$savedir" "$pltheme"
mv "$pltheme"/grub.file "$grubdir"/grub
cp -r "$pltheme" "$plymouththemedir"  #removes savedir for cleanup.

													#the next line sets up drubuntu plymouth theme as default.
update-alternatives --install /lib/plymouth/themes/default.plymouth default.plymouth /lib/plymouth/themes/drubuntu/drubuntu.plymouth 100 >/dev/null 
update-grub >> /dev/null                                  	#update grub.
update-initramfs -c -k all > /dev/null						#generate new kernel  .
update-initramfs -u -k all > /dev/null
#sudo reboot -p					
}
plymouthlogo
