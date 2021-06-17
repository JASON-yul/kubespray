#!/bin/bash
[ -a /etc/apt/sources.list.focal.bak* ] && exit || cp -a /etc/apt/sources.list /etc/apt/sources.list.focal.bak-`date +%F-%T`
cat > /etc/apt/sources.list << EOF
deb http://mirrors.aliyun.com/ubuntu/ eoan main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ eoan main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ eoan-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ eoan-security main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ eoan-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ eoan-updates main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ eoan-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ eoan-proposed main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ eoan-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ eoan-backports main restricted universe multiverse
EOF


注：Ubuntu18.04系统

deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb http://mirrors.aliyun.com/ceph/debian-nautilus/ bionic main
