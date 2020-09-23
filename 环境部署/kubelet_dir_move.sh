#!/bin/bash

DIR="/var/lib/kubelet"
APP=kubelet
DEST="/mnt/data_disk"

systemctl stop $APP
df | grep $DIR | awk '{print $6}' > /tmp/${APP}_list.txt
while read line; do
        umount $line
done < /tmp/${APP}_list.txt
mv $DIR ${DEST}/
ln -sv ${DEST}/${APP} /var/lib/
systemctl start $APP
