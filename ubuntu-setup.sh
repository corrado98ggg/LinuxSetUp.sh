#!/bin/sh

#nota bene: prima di fare lo script eseguire 
#sudo -s
#apre una console roots

#scarico google chrome
apt update
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
google-chrome #avvio google chrome, lo uso come verifica

#scarico telegram
apt update
snap install telegram-desktop

#installo whatsapp
apt update
snap install whatsapp-for-linux

#scarico vs_code
apt update
apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt install code
code --version

#installo python 
apt update
apt install software-properties-common
add-apt-repository ppa:deadsnakes/ppa
apt update
apt install python3.8
python --version

#installo django
apt update
python3 -V
apt install python3-django
django-admin --version