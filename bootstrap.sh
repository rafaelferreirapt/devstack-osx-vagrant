#!/usr/bin/env bash

apt-get update
apt-get install -y git
cd /vagrant
rm -rf data
mkdir data
cd data
git clone https://git.openstack.org/openstack-dev/devstack .
cp ../local.conf .
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE
