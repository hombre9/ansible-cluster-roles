#!/usr/bin/env bash

# Change yum mirror
sed -i.backup 's/^enabled=1/enabled=0/' /etc/yum/pluginconf.d/fastestmirror.conf
mv -f /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-6.repo
yum makecache
# yum update
