#!/bin/bash
wget -O $HOME/Downloads/dltk.zip http://mirror.selfnet.de/eclipse/technology/dltk/downloads/drops/R4.0/R-4.0-201206120903/dltk-R-4.0-201206120903.zip

/opt/Aptana_Studio_3/AptanaStudio3 \
-application org.eclipse.equinox.p2.director \
-noSplash \
-repository jar:file:///$HOME/Downloads/dltk.zip!/ \
-installIU org.eclipse.dltk4.sdk.feature.group
