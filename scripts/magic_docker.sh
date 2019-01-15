#!/usr/bin/env bash
echo "running magic.."

sudo chmod -R 777 /vagrant

sudo apt-get update

echo "Install Docker and Docker-compose"
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get -y install docker-ce
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose 
sudo chmod +x /usr/local/bin/docker-compose

#touch ~/.bash_profile
#echo "export PATH=$PATH:/opt/node-v8.11.4-linux-x64/bin" >> ~/.bash_profile

echo "Install python pip virtualenv and awscli and boto3"
sudo apt install -y tree
sudo apt install -y python 
sudo apt install -y python-pip 
sudo pip install virtualenv
virtualenv venv 
source venv/bin/activate
pip install awscli
pip install --upgrade pip
pip install boto3

echo "Install NodeJS 8"
sudo su
cd /opt
wget https://nodejs.org/dist/v8.11.4/node-v8.11.4-linux-x64.tar.xz
unxz node-v8.11.4-linux-x64.tar.xz
tar xvf node-v8.11.4-linux-x64.tar


#docker run -d -v jenkins_home:/home/vagrant/jenkins_home -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts
#deactivate
#git clone https://github.com/suryanits/ansible-3h
