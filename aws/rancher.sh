#!/bin/bash
curl https://releases.rancher.com/install-docker/19.03.sh | sh
sudo su
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run -d --restart=unless-stopped \
  -p 80:80 -p 443:443 \
  --privileged \
  rancher/rancher:latest
