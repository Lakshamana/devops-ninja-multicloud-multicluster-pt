#!/bin/bash
sudo yum update -y  
sudo yum install -y docker
sudo systemctl enable docker
sudo systemctl start docker

docker run -d --restart=unless-stopped \
  -p 80:80 -p 443:443 \
  --privileged \
  rancher/rancher:latest
