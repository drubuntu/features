#!/bin/bash
echo "Aptana will install  Git Support for you now. This takes approximently half of an hour so take youe time!"
/opt/Aptana_Studio_3/AptanaStudio3 \
-application org.eclipse.equinox.p2.director \
-noSplash \
-repository \
http://download.eclipse.org/releases/kepler \
-installIUs \
org.eclipse.egit.feature.group,\
org.eclipse.jgit.feature.group,\
org.eclipse.emf.sdk.feature.group,\
org.eclipse.mylyn_feature.feature.group >>/dev/null


