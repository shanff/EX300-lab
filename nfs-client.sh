#!/bin/bash

# centos7 - nfs client - mount a share with SELinux labels
# to be mounted from svr2
# author: kamilsmuga

mkdir -p /mnt/nfsshare
echo "10.200.0.10:/nfsshare /mnt/nfsshare nfs defaults,v4.2 0 0" >> /etc/fstab
mount -a
