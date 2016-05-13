#!/usr/bin/env bash

apt-get update
apt-get install -y haproxy
cp -R /vagrant/configfiles/lb/* /
service haproxy restart
cat /vagrant/configfiles/hosts >> /etc/hosts
