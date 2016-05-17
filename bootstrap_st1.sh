apt-get install -y python-software-properties
apt-get install -y software-properties-common
add-apt-repository -y ppa:gluster/glusterfs-3.5
apt-get update
apt-get install -y glusterfs-server

apt-get install -y nfs-common
apt-get install -y nfs-kernel-server
modprobe nfs

cp /vagrant/configfiles/hosts /etc/hosts

rm -rf /data

mkdir /data
mkdir /data/brick1
mkdir /data/brick1/gv0


ln -fs /vagrant /data/brick1/gv0
