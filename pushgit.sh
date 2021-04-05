#!/bin/bash

echo " =============== MANIPULATE THEN PUSH AGAIN =============== "

sleep 2
echo " =============== INSTALLING PYTHON3 PACKAGES =============== "

sudo apt install python3-pip3
sleep 2
pip3 install -r requirements.txt

echo " =============== MANIPULATE AND PUSH =============== "

sleep 3
python3 manipulate.py
sleep 2

echo " =============== PUSHING TO GITHUB =============== "

git add .
git commit -m "modifying file with automation"
git push origin master


echo " =============== DONE =============== "