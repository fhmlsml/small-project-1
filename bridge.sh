#!/bin/bash

echo " =============== MELUNCUR KE VAGRANT MELALUI SSH =============== "
sleep 2

ssh $(vagrant ssh-config | awk 'NR>1 {print " -o "$1"="$2}') localhost << EOF
    cd /vagrant/
    chmod +x setup_environment.sh
    ./setup_environment.sh
EOF