#!/bin/bash
sudo yum update -y  
sudo yum install -y docker
sudo systemctl enable docker
sudo systemctl start docker

docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run  rancher/rancher-agent:v2.7.0 --server https://44.202.23.202 --token tjt7d8lvmldwd67f9gmvg9bxgnvf4fwsxh4drfpl5b8swjhdd5z4v2 --ca-checksum dc436ef7beeeb247dfbf140c51933db64e484065ac2e0e0bcae0d216390750d7 --etcd --controlplane --worker
