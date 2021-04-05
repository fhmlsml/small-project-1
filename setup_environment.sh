#!/bin/bash

echo " ========== Downloading Landing Page, Pesbuk Repository & Wordpress  ========== "

wget https://github.com/sdcilsy/landing-page/archive/refs/heads/master.zip
unzip master.zip
rm -rf master.zip
mv /vagrant/landing-page-master /vagrant/landing-page

sleep 2

wget https://github.com/sdcilsy/sosial-media/archive/refs/heads/master.zip
unzip master.zip
rm -rf master.zip
mv /vagrant/sosial-media-master /vagrant/sosial-media

sleep 2

wget -c http://wordpress.org/latest.tar.gz
sleep 1
tar -xzvf latest.tar.gz
sleep 2
rm -rf latest.tar.gz



echo " ========== Membuat file directory virtualhost  ========== "

sudo mkdir -p /var/www/landing-page.local/

sudo mkdir -p /var/www/pesbuk.local/public_html

sudo mkdir -p /var/www/wordpress.local/public_html
sleep 2



echo " ========== Menyalin Web Apps ke root document ========== "

sudo cp -R landing-page/* /var/www/landing-page.local/
sudo cp -R sosial-media/* /var/www/pesbuk.local/public_html/
sudo cp -R wordpress/* /var/www/wordpress.local/public_html
sleep 2


echo " ========== Menghapus default page apache ========== "
sudo rm -rf /var/www/html



echo " ==============----------============ CONFIG ==============----------============ "



echo " ========== Merubah User dan Group Directory Apache ========== "

sudo chown -R www-data:www-data /var/www/landing-page.local/
sudo chown -R www-data:www-data /var/www/pesbuk.local/public_html
sudo chown -R www-data:www-data /var/www/wordpress.local/public_html
sleep 2


echo " ========== Menyalin konfigurasi virtual host ke apache direktori ========== "

sudo cp -R site-config.conf /etc/apache2/sites-available/
sleep 2

echo " ========== Mengaktifkan Virtual Host ========== "

cd /etc/apache2/sites-available/

sudo a2dissite 000-default.conf
sleep 1
sudo a2ensite site-config.conf
sleep 1
sudo service apache2 restart

echo " ========== Selesai ! Please configure database manually :3 ========== "
sleep 2

