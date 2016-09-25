EX300-sandbox-lab
=================

EX300 - RHCE - RHEL 7 - study lab configuration scripts

# Lab build
Install [Vagrant](https://www.vagrantup.com)

Use ```Vagrantfile``` configuration file to build desktop and server machines:
```
vagrant up
```
#### Result
VMs created:
- 10.200.0.10 accessible through ```vagrant ssh svr1```
- 10.200.0.11 accessible through ```vagrant ssh svr2```

# DNS caching-only* name server

```dns.sh``` - OK, not only for caching. Hosts A and PTR records for:
- svr1.example.com <-> 10.200.0.10
- svr2.example.com <-> 10.200.0.11

# Central mail server
``` mail.sh ``` - postfix null client set up to forward email to main server - mail.example.com

# NFS 
``` nfs-server.sh ``` - nfs kernel server - shares svr1:/nfsshare(rw) with SELinux labels exported 

``` nfs-client.sh ``` - to be mounted on svr2

# Samba
``` smb-server.sh ``` - samba server configuration for multiuser mount

``` smb-client.sh ``` - samba client - mounts //svr1/smbshare
# iscsi
``` iscsi-target.sh ``` - iscsi target - iqn.2014-10.example.com:svr2

``` iscsi-initiator.sh ``` - iscsi initiator 
