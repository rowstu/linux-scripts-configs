mv /var/lib/rpm/__db* /tmp/
rpm --rebuilddb
yum clean all