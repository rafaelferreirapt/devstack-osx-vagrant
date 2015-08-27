#!/usr/bin/env bash

apt-get update
apt-get install -y git
cd /vagrant
rm -rf data
mkdir data
cd data
git clone https://git.openstack.org/openstack-dev/devstack .
cp ../local.conf .
