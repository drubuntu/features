#!/bin/bash
apt-get -y -qq install memcached >/dev/null >2&1
apt-get -y -qq install php5-memcache >/dev/null >2&1
service apache2 restart >/dev/null >2&1
echo "memache is installed!"
