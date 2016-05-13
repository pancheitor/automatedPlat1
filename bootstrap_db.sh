#!/usr/bin/env bash

debconf-set-selections <<< 'mysql-server mysql-server/root_password password 123456'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 123456'
apt-get update
apt-get install -y mysql-server
cat /vagrant/configfiles/hosts >> /etc/hosts
