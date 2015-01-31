#!/bin/bash
d7folder=/var/www/d7
bootstrapfolder=/var/www/d7/sites/all/themes/bootstrap/
allthemesfolder=/var/www/d7/sites/all/themes/
boilderplatesfolder=/opt/.drubuntu/features/grunt_theme_boilerplate
boilderplatesfolderdrupal="$allthemesfolder"grunt_theme_boilerplate
copyboilerplate(){
if [ -d "$d7folder" ];then
mkdir -p "$allthemesfolder"
cp -R "$boilderplatesfolder" "$allthemesfolder"
cd "$boilderplatesfolderdrupal"
sudo npm install "$boilderplatesfolderdrupal"
else
	echo "Drupal 7 seems not to be installed correctly."
fi 
}
export nameofuser=`logname` 
if [ -d "$bootstrapfoler" ];then
copyboilerplate
else
	cd "$d7folder"
	drush -y dl bootstrap
	copyboilerplate
chown -Rh "$nmeofuser":www-data "$bootstrapfolder"
chown -Rh "$nmeofuser":www-data "$boilderplatesfolder"
chown -Rh "$nmeofuser":www-data "$boilderplatesfolderdrupal"
 fi
echo "Your Bootstrap 3 Subtheme is now installed and works with Sass instead of less"
echo "You can costumize the info file as well as the folder name andthe package.json"
echo "Run npm install iside the themes folder if you are done!" 
echo ""
echo "More info at https://github.com/drubuntu/wiki"
