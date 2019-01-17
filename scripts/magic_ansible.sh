#!/usr/bin/env bash
echo "running magic.."

sudo chmod -R 777 /vagrant

sudo -i yum -y update
#sudo -i yum groupinstall -y 'gnome desktop'
#sudo -i yum install -y 'xorg*'
#sudo -i yum remove -y initial-setup initial-setup-gui
#sudo -i systemctl isolate graphical.target
#sudo -i systemctl set-default graphical.target
sudo -i yum install git -y
sudo -i useradd ansible 
sudo -i yum install python2 epel-release -y
sudo -i yum install -y ansible
#git clone https://github.com/suryanits/ansible-3h
