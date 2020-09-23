#!/bin/bash

DISK1="/dev/vdb"
DISK2="/dev/vdc"
VGNAME="data_disk"
LVNAME="data_disk"
#创建pv
pvcreate $DISK1
pvcreate $DISK2

#创建vg
vgcreate $VGNAME $DISK1 $DISK2

#创建lv
lvcreate -n $LVNAME -l +100%FREE $VGNAME

#格式化文件系统
mkfs -t ext4 /dev/$VGNAME/$LVNAME

#创建挂载目录
mkdir -p /mnt/data_disk  

#挂载
echo -e "/dev/$VGNAME/$LVNAME    /mnt/data_disk   ext4    defaults 0 0" >> /etc/fstab
mount -a
