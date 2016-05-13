    1  gluster volume create gv0 replica 2 192.168.50.8:/data/brick1/gv0 192.168.50.9:/data/brick1/gv0
    2  gluster volume start gv0
    3  history | grep "gluster" >> /vagrant/bootstrap_st.sh 
    1  gluster volume create gv0 replica 2 192.168.50.8:/data/brick1/gv0 192.168.50.9:/data/brick1/gv0
    2  gluster volume start gv0
    3  history | grep "gluster" >> /vagrant/bootstrap_st.sh 
    4  vi /vagrant/bootstrap_st.sh 
    5  history >> /vagrant/bootstrap_st.sh 
