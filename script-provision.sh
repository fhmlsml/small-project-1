#!/bin/bash

echo " ========== Update & Upgrade Packages ========== "

sudo apt-get update -y
sleep 2
sudo apt-get upgrade -y

echo " ========== Basic setup stuff ========== "

sleep 2
sudo apt-get install -y git
sleep 2
sudo apt-get install -y net-tools
sleep 2
sudo apt-get install -y unzip

echo " ========== Instalasi PHP and Server ========== "

sleep 2

sudo apt-get install -y php libapache2-mod-php php-mysql
sudo apt-get install -y mysql-server

sleep 2

echo " ========== Instalasi selesai ========== "
# sleep 2

# yea i know i can use for / while loop here but.. i don't really know bash script :(
# echo " ========== Menuju SSH dan install otomatis Dalam 5 detik ========== "
# # sleep 1
# echo " ================ 5 ( CTRL + C UNTUK CANCEL ) ================ "
# # sleep 1
# echo " ================ 4 ( CTRL + C UNTUK CANCEL ) ================ "
# sleep 1
# echo " ================ 3 ( CTRL + C UNTUK CANCEL ) ================ "
# sleep 1
# echo " ================ 2 ( CTRL + C UNTUK CANCEL ) ================ "
# sleep 1
# echo " ================ 1 ( CTRL + C UNTUK CANCEL ) ================ "
# sleep 1

# echo " =============== MELUNCUR KE VAGRANT MELALUI SSH =============== "
# sleep 2



# i failed here :3
# ssh -t -t $(vagrant ssh-config | awk 'NR>1 {print " -o "$1"="$2}') localhost << EOF
#     cd /vagrant/
#     chmod +x setup_environment.sh
#     ./setup_environment.sh
# EOF



# sudo sh /home/fhmisml/Test/last/bridge.sh

# jawaban="Y"

# read -p "Lanjut Menconfig Virtual Host kedalam VM ? (Y/n) " pilih;
# if [ $pilih == $jawaban ];
# then
#     chmod +x bridge.sh
#     ./bridge.sh
#     echo " =============== SELESAI ! KELUAR DARI SSH =============== "
#     exit 0
# else
#     echo " keluar "
#     exit 1
# fi