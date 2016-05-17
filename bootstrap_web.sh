#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
#  ln -fs /vagrant /var/www
fi
cat /vagrant/configfiles/hosts >> /etc/hosts

apt-get install -y glusterfs-client
mkdir /storage-pool
cat /etc/hosts
mount -t glusterfs storage1:/gv0 /storage-pool
ln -fs /storage-pool /var/www
