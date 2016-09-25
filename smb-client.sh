#!/bin/bash

# centos7 - samba client configuration 
# author: kamilsmuga

yum install -y cifs-utils

echo "username=svr1" >> /root/smb.creds
echo "password=svr1" >> /root/smb.creds

mkdir -p /mnt/smbshare

echo "10.200.0.10:/smbshare /mnt/smbshare cifs multiuser,credentials=/root/smb.creds,sec=ntlmssp 0 0" >> /etc/fstab
mount -a
