#! /bin/bash

# install docker and compose
sudo apt-get update && curl -fsSl https://get.docker.com |sh
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# install Temporal 
git clone https://github.com/temporalio/docker-compose.git && cd docker-compose
docker-compose -f docker-compose-postgres.yml up -d