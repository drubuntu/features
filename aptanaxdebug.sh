#!/bin/bash
echo "Aptana will install  pdt and necessary xDebug components now. This will take a while so take you're time!"

/opt/Aptana_Studio_3/AptanaStudio3 \
-application org.eclipse.equinox.p2.director \
-noSplash \
-repository \
 http://download.eclipse.org/releases/kepler \
-installIUs \
org.eclipse.php.feature.group >>/dev/null

/opt/Aptana_Studio_3/AptanaStudio3 \
-application org.eclipse.equinox.p2.director \
-noSplash \
-repository \
 http://download.eclipse.org/releases/kepler \
-installIUs \
org.eclipse.php.sdk.feature.group >>/dev/null
