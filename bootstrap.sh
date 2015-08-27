#!/usr/bin/env bash

apt-get update
apt-get install -y git
cd /media/data
git clone https://git.openstack.org/openstack-dev/devstack
