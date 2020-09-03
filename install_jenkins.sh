#!/bin/bash

# install docker
#apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
apt install apt-transport-https ca-certificates curl software-properties-common
apt remove docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

apt-get update
apt -y install docker-ce docker-ce-cli containerd.io
#apt-get install -y docker-engine
systemctl enable docker
systemctl start docker
usermod -aG docker root

# run jenkins
#create a folder
mkdir -p /var/jenkins_home
#give that folder rights
chown -R 1000:1000 /var/jenkins_home/
#run the jenkins on docker container port 8080
docker run -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -d --name jenkins jenkins/jenkins:lts

# show endpoint
echo 'Jenkins installed'
echo 'You should now be able to access jenkins at: http://'$(curl -s ifconfig.co)':8080'
