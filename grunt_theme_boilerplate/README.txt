This sub theme requires the bootstrap base for drupal. You can get it with 'drush dl bootstrap'.
To start with bootstrap development you have to edit

- package.json
- gruntfile.js
- bootstrap_subthem.info.startetkit
- the name of the subthemes folder

to fit them your needs.

if you are ready run npm install while you are in the directory.

If you just edit the directory name and teh info file you can use the template with grunt watch to minify your css while you edit your scss files.

In the future we will provide livereload-js support as well out of the box.

More info about the bootstrap theme can be found here.

To help consolidate and remove possible future inconsistencies, the
documentation for this sub-theme starter kit has been moved to:
http://drupal.org/node/1978010.
