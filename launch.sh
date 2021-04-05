#!/bin/bash

echo " =============== MELUNCUR KE VAGRANT MELALUI SSH =============== "
sleep 2

ssh $(vagrant ssh-config | awk 'NR>1 {print " -o "$1"="$2}') localhost << EOF
    cd /vagrant/
    echo " DIRECTORY CHANGED TO /vagrant "
    pwd
    echo "sleeping for 7 secs before starting. . ."
    sleep 7
    chmod +x *.sh
    echo " 8 secs more "
    ls -la
    sleep 8
    ./setup_environment.sh
EOF