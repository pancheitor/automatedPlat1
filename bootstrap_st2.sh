apt-get install -y python-software-properties
apt-get install -y software-properties-common
add-apt-repository -y ppa:gluster/glusterfs-3.5
apt-get update
apt-get install -y glusterfs-server

cp /vagrant/configfiles/hosts /etc/hosts

rm -rf /data

mkdir /data
mkdir /data/brick1
mkdir /data/brick1/gv0

gluster peer probe storage1
gluster volume create gv0 replica 2 storage1:/data/brick1/gv0 storage2:/data/brick1/gv0
gluster volume start gv0
