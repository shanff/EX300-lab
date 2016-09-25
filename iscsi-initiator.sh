#!/bin/bash

# centos7 - initiate iscsi connection
# author: kamilsmuga

yum -y install iscsi-initiator-utils
systemctl enable iscsid iscsiuio

# identify yourself as configured on target
echo InitiatorName=iqn.2014-10.example.com:svr1 > /etc/iscsi/initiatorname.iscsi
systemctl start iscsid iscsiuio
# discover targets on svr2
iscsiadm --mode discoverydb --type sendtargets --portal 10.200.0.11 --discover
# login (and mount) svr2's device
iscsiadm --mode node --targetname iqn.2014-10.example.com:svr2 --portal 10.200.0.11:3260 --login
