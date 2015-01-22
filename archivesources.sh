#!/bin/bash
#this file contains the current urls to aptana studio versions for Linux.
aptanadlurl=https://github.com/aptana/studio3/releases/download/
os=linux
fpofn=Aptana_Studio_3_Setup_Linux_
arc64=x86_64_
arc86=x86_
ext=.zip
#the vollowing variable is the only thing to change here if a new version of Aptana Studio will be released.
#------------------------
studioversion=3.6.1
#-------------------
dlx64=$aptanadlurl/v$studioversion/$fpofn$arc64$studioversion$ext
dlx86=$aptanadlurl/v$studioversion/$fpofn$arc86$studioversion$ext
x64=$fpofn$arc64$studioversion$ext
x86=$fpofn/$arc86/$studioversion/$ext