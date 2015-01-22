    #/bin/bash 
    curl http://repo.varnish-cache.org/debian/GPG-key.txt | sudo apt-key add - >/dev/null >2&1
    echo "deb http://repo.varnish-cache.org/ubuntu/ precise varnish-3.0" | sudo tee -a /etc/apt/sources.list
    sudo apt-get -qq update >/dev/null >2&1 
    sudo apt-get install -y -qq varnish >>/dev/null 2>&1
