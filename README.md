# jenkins-dockers

Jenkins Configurations

#Just run the command below where the repo is cloned first time if dockers is not installed.

For Jwilder docker pull jwilder/nginx-proxy:latest bash install_jenkins.sh

#Check in container with if docker.sock is available! ls -ahl /var/run/docker.sock

bash install_jwilder.sh

#Once install restart the docker services service docker restart

#check the docker version with docker --version

#If the docker version is 19+ good now stop the container remove the image and build the image with bash build_jenkins_dockers.sh

#Once the image is built run this command to map the volume bash run_jenkins.sh

#You can also use to build and deploy docker-compose up -d

#docker versions https://download.docker.com/linux/static/stable/x86_64/

#[SOLVED] SonarQube: Max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144] sudo sysctl -w vm.max_map_count=262144

If dockers does not run then re run the below command to give root permision. chown -R 1000:1000 /var/jenkins_home/

Command to see logs of a container docker logs -f jenkins

#ssh for github first create the folder mkdir /var/jenkins_home/.ssh

#Now give root access chmod 700 /var/jenkins_home/.ssh

#Now create the ssh file ssh-keygen -f /var/jenkins_home/.ssh/git
