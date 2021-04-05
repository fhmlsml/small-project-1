#!/bin/bash

echo " =============== MANIPULATE THEN PUSH AGAIN =============== "

sleep 2
echo " =============== INSTALLING PYTHON3 PACKAGES =============== "
sudo apt install python3-pip3
sleep 2
pip3 install -r requirements.txt
echo " =============== INITIALIZE GIT REPO =============== "
git add .
sleep 1
git commit -m "modifying file with automation"
git push origin master
touch .gitignore
echo "hello" > ~/Desktop/new_file.txt