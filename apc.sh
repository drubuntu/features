#!/bin/bash
apt-get install -y -qq php-apc  >/dev/null 2>&1
service apache2 restart >/dev/null 2>&1
echo "apc is installed"
