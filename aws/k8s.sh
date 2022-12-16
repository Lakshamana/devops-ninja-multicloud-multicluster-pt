#!/bin/bash
curl https://releases.rancher.com/install-docker/19.03.sh | sh
docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run  rancher/rancher-agent:v2.7.0 --server https://35.173.247.34 --token 47fqft7xwhhnc4zdlkn56wp94nh5r5m764vpx4lqgp785nc49x95h8 --ca-checksum b4aae7639ef51c6b0ad0a0ac097933a994654fa884824634f31d20a46b13406c --etcd --controlplane --worker
